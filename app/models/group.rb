class Group < ActiveRecord::Base
	has_many :tasks, through: :task_to_groups
	has_many :task_to_groups, dependent: :destroy
	belongs_to :user

	def to_s
		self.name
	end
end
