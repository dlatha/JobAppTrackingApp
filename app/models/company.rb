class Company < ActiveRecord::Base
  attr_accessible :applStatus, :companyName, :currentStage, :interviewProcess, :location, :notes, :typeOfCompany
  has_many :recruiters
  has_many :jobs
end
