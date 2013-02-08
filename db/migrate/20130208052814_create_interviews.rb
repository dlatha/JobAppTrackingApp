class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.integer :job_id
      t.integer :company_id
      t.text :jobDescription
      t.string :interviewer
      t.string :typeOfInterview
      t.text :feedback
      t.text :drawbacks
      t.text :improvements
      t.date :date
      t.time :time
      t.string :status

      t.timestamps
    end
  end
end
