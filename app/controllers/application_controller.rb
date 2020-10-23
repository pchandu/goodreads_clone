class ApplicationController < ActionController::Base
  helper_method :current_user, :logout!, :login!

  def current_user
    # We are searching in the session_token column
    # of the users table for a session_token that
    # matches the one in our cookie
    #
    # We also are using lazy assingment, which
    # will say for the current request/response
    # cycle, if we already called current_user
    # method, we won't need to search our db again
    current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login!(user)
    # Remember that we wrote
    # User#reset_session_token!
    # to return the updated session_token stored
    # for that user in the db.
    #
    # session[:session_token] creates a key called
    # 'session_token' in the 'session',
    # which Rails gives us so we can read/write
    # information to a cookie. Rails sends this
    # in the response, and our browser will
    # see the cookie and hang on to it.
    # For every future request to our Rails app,
    # our browser will send the cookie as part
    # of the request.
    #
    #  # https://guides.rubyonrails.org/action_controller_overview.html#session
    #
    # Remember HTTP is stateless. The only way to
    # persist data between requests is by using
    # cookies.
    #
    session[:session_token] = user.reset_session_token!
  end

  def logout!
    # Find the current user, and change their
    # session token in the db
    current_user.reset_session_token!

    # Next, clear session_token in the cookie
    # The browser will see that `session_token`
    # in the cookie is nil, and delete it from
    # it's cookie jar
    session[:session_token] = nil
  end

  def require_logged_in
    unless current_user
      render json: { base: ['invalid credentials'] }, status: 401
    end
  end
end
