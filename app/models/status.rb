class Status < ActiveRecord::Base
  belongs_to :landing
  has_many :clients
end
