class User < ApplicationRecord
before_save {email.downcase! }
validates  :name, presence: true, length:  {maximum: 50}
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates  :email, presence: true, length:  {maximum: 250}, format: {with: VALID_EMAIL_REGEX }, uniqueness:  {case_sensitive: false}
has_secure_password
validates :password, presence: true, length: {minimum: 6}
end
def self.search(search)
	where("name Like ?", "%#{search}%") #checks if the name field matches search
	where("email Like ?", "%#{search}%") #checks if the email field matches search

       end

