class Recruiter < ActiveRecord::Base
  attr_accessible :company_id, :email, :feedback, :recruiterName, :scheduledDate, :scheduledTime, :telephone
  has_one :company
  belongs_to :company
end
