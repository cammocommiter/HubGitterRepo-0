# use mongoid
class User
  include Mongoid::Document
end


# then
user = User.where(email: 'joe@example.com').first

if user
  user.password = new_password
  user.password_confirmation = new_password
  user.save
end

nil