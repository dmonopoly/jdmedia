class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
			t.string :login, :null => false
			t.string :crypted_password, :null => false
			t.string :password_salt, :null => false
			t.string :persistence_token, :null => false # stored in cookies and sessions to persist user
			
			t.string :single_access_token, :null => false # so you can enter a token in the URL to get temporary access
			t.string :perishable_token, null => false # for authenticating users to reset passwords, confirm accounts, etc.
			
			# magic columns - optional
      t.integer :login_count, :null => false, :default => 0
			t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
			t.datetime :current_login_at
      t.datetime :last_login_at
			t.string :current_login_ip
      t.string :last_login_ip
			
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
