class CreateTropoAnswers < ActiveRecord::Migration
  def self.up
    create_table :tropo_answers do |t|
      t.integer :tropo_session_id
      t.integer :tropo_question_id
      t.string :response
      t.timestamps
    end
  end

  def self.down
    drop_table :tropo_answers
  end
end
