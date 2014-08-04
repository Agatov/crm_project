class TaskGroup < ActiveRecord::Base
  belongs_to :account

  has_many :tasks
end
