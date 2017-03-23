class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :username, presence: true, length: { in: 6..15 }, uniqueness: { case_sensitive: false }, on: :create
	validates :password, presence: true, length: { in: 8..16 }
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

	validates :phone, numericality: { only_integer: true }
end
