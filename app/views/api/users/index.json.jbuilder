@users.each do |user|
  json.set! user.id do
    json.extract! user, :username, :email
    json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
  end
end