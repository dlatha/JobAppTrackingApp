class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.integer :company_id
      t.string :recruiterName
      t.string :email
      t.text :feedback
      t.string :telephone
      t.date :scheduledDate
      t.time :scheduledTime

      t.timestamps
    end
  end
end
