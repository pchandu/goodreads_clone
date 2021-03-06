class User < ApplicationRecord
    validates :password_digest, presence: true
    validates :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :session_token, presence: true, uniqueness: true 
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :username, presence: true, uniqueness: true
    after_initialize :ensure_session_token
    attr_reader :password

    has_many :reviews,
    foreign_key: :author_id
    
    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user
            user.is_password?(password) ? user : nil
        else
            nil
        end
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end
    
    private  
    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end
end
