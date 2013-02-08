class Interview < ActiveRecord::Base
  attr_accessible :company_id, :date, :drawbacks, :feedback, :improvements, :interviewer, :jobDescription, :job_id, :status, :time, :typeOfInterview
  has_many :questions
  belongs_to :job
  has_one :job
end
