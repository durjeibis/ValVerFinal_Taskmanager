class Project < ActiveRecord::Base
  belongs_to :status
  attr_accessible :date_end, :date_initiation, :description, :name
end
