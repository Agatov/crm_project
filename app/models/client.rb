class Client < ActiveRecord::Base
  belongs_to :status
  belongs_to :user

  has_many :comments
  has_many :tasks

  scope :with_status, -> (status_id) { where(status_id: status_id) }


  def add_comment(comment)
    self.comments << comment
  end

  def add_task(task)
    self.tasks << task
  end

  def change_status(status)
    #@todo -  нужно проверить, можем ли сменить статус на этот
    update_attributes(status_id: status.id)
  end
end
