class TaskToGroup < ActiveRecord::Base
	belongs_to :task
	belongs_to :group
	validates_uniqueness_of :task_id, :scope => [:group_id]
end
