class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :interview_id
      t.string :typeOfQuestion
      t.string :title
      t.string :body
      t.text :yourAnswer
      t.text :rightAnswer
      t.text :improvements
      t.text :notes

      t.timestamps
    end
  end
end
