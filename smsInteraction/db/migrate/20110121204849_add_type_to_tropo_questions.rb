class AddTypeToTropoQuestions < ActiveRecord::Migration
  def self.up
    add_column :tropo_questions, :type, :string
  end

  def self.down
    remove_column :tropo_questions, :type
  end
end
