class Team < ActiveRecord::Base
	validates :team_name, presence: true, length: { in: 4..15 }, format: { with: /[a-z\d\_]\z/ }, uniqueness: { case_sensitive: false }, on: :create
	validates :member_name, presence: true, format: { with: /[a-zA-Z\ ]\z/ }
	validates :member_phone, presence: true, numericality: { only_integer: true }
end
