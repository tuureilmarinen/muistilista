class Task < ActiveRecord::Base
	belongs_to :user
	has_many :groups, through: :task_to_groups
	has_many :task_to_groups
	validates :name, presence: true
	validates :description, presence: true
	validates :user, presence: true
end
