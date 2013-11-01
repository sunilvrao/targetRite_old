class Task < ActiveRecord::Base
  belongs_to :role
  attr_accessible :complete, :name, :role_id

end
