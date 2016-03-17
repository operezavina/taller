class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }
    validates :email, format: { with: /([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+.[a-zA-Z]{2,3})/}
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
end
