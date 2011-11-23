class CreateTropoSessions < ActiveRecord::Migration
  def self.up
    create_table :tropo_sessions do |t|
      t.string :session_id
      t.string :network
      t.string :username
      t.timestamps
    end
  end

  def self.down
    drop_table :tropo_sessions
  end
end
