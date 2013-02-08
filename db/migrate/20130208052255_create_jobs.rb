class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.string :companyName
      t.string :telephone
      t.string :applicationStatus
      t.string :jobTitle
      t.text :jobDescription
      t.text :notes

      t.timestamps
    end
  end
end
