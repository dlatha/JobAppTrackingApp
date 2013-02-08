class Job < ActiveRecord::Base
  attr_accessible :applicationStatus, :companyName, :company_id, :jobDescription, :jobTitle, :notes, :telephone
  has_one :company
  belongs_to :company
  has_many :recruiters
  has_many :interviews
  
end
