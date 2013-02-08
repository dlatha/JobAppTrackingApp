# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130208052932) do

  create_table "companies", :force => true do |t|
    t.string   "companyName"
    t.string   "location"
    t.string   "applStatus"
    t.string   "typeOfCompany"
    t.string   "interviewProcess"
    t.string   "currentStage"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "interviews", :force => true do |t|
    t.integer  "job_id"
    t.integer  "company_id"
    t.text     "jobDescription"
    t.string   "interviewer"
    t.string   "typeOfInterview"
    t.text     "feedback"
    t.text     "drawbacks"
    t.text     "improvements"
    t.date     "date"
    t.time     "time"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "company_id"
    t.string   "companyName"
    t.string   "telephone"
    t.string   "applicationStatus"
    t.string   "jobTitle"
    t.text     "jobDescription"
    t.text     "notes"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "interview_id"
    t.string   "typeOfQuestion"
    t.string   "title"
    t.string   "body"
    t.text     "yourAnswer"
    t.text     "rightAnswer"
    t.text     "improvements"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "recruiters", :force => true do |t|
    t.integer  "company_id"
    t.string   "recruiterName"
    t.string   "email"
    t.text     "feedback"
    t.string   "telephone"
    t.date     "scheduledDate"
    t.time     "scheduledTime"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
