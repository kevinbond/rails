class AddTropoEntryPointToTropoSessions < ActiveRecord::Migration
  def self.up
    add_column :tropo_sessions, :entry_point, :string
  end

  def self.down
    remove_column :tropo_sessions, :entry_point
  end
end
