class Account < ActiveRecord::Base
  has_many :users
  has_many :landings
  has_many :task_groups

  after_create :create_admin
  after_create :create_first_landing


  def create_admin
  end

  def create_first_landing
  end

end
