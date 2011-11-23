class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.token_authenticatable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.trackable
      t.timestamps
    end
    
    add_index :users, :unlock_token, :unique => true
  end

  def self.down
    drop_table :users
  end
end
