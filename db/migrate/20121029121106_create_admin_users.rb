class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|

        t.string "first_name", :limit => 2
        t.string "last_name", :limit => 50
	t.string "username", :limit =>25
        t.string "email", :default => "", :null => false, :limit =>100
        t.string "hashed_password", :limit => 40
	t.string "salt", :limit => 40
   
      t.timestamps
    end
  end
	
end
