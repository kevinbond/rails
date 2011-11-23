class AddSessionIdToTropoMessages < ActiveRecord::Migration
  def self.up
    add_column(:tropo_messages, :tropo_session_id, :string)
  end

  def self.down
    remove_column(:tropo_messages, :tropo_session_id)
  end
end
