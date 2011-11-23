class CreateTropoMessages < ActiveRecord::Migration
  def self.up
    create_table :tropo_messages do |t|
      t.string :channel, :network, :from, :to, :message
      t.timestamps
    end
  end

  def self.down
    drop_table :tropo_messages
  end
end
