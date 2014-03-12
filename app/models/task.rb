class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :status
  attr_accessible :date_end, :date_initiation, :description, :name
end
