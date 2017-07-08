class CreateUsers < ActiveRecord::Migration[5.1]

  def up
    create_table :users do |t|

    	t.column "first_name", :string, :limit => 25
    	# this is shorthand for the above syntax
    	t.string "last_name", :limit => 50
    	t.string "email", :default => '', :null => false
    	t.string "password", :limit => 40
    	t.string "user_name", :limit => 20
    	

      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
  		drop_table :users
  end

end
