class User < ActiveRecord::Base
  belongs_to :account
  has_many :comments
  has_many :clients
  has_many :tasks

  as_enum :role, admin: 0, manager: 1



  def can_be_authorized?(password)
    return true if password == self.password
    false
  end


end
