class User < ActiveRecord::Base
	validates :username, uniqueness: true, length: { in: 3..15 }
	validates :password, length: { minimum: 4 }
	has_secure_password
	has_many :tasks, dependent: :destroy
	has_many :groups, dependent: :destroy

	def to_s
		self.username
	end
end
