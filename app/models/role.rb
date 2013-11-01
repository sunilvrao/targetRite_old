class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  has_many :tasks
  
  scopify

  def incomplete_tasks
    tasks.where(complete: false)
  end

  def complete_tasks
    tasks.where(complete: true)
  end

end