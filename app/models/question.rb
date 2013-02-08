class Question < ActiveRecord::Base
  attr_accessible :body, :improvements, :interview_id, :notes, :rightAnswer, :title, :typeOfQuestion, :yourAnswer
  belongs_to :interview
end
