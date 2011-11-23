class CreateTropoQuestions < ActiveRecord::Migration
  def self.up
    create_table :tropo_questions do |t|
      t.string :question_text
      t.string :valid_choices
      t.string :invalid_message
      t.integer :timeout
      t.integer :attempts
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :tropo_questions
  end
end
