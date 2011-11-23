class AddChannelToTropoSessions < ActiveRecord::Migration
  def self.up
    add_column :tropo_sessions, :channel, :string
  end

  def self.down
    remove_column :tropo_sessions, :channel
  end
end
