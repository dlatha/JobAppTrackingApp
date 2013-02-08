class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :companyName
      t.string :location
      t.string :applStatus
      t.string :typeOfCompany
      t.string :interviewProcess
      t.string :currentStage
      t.text :notes

      t.timestamps
    end
  end
end
