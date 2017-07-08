class ListsUsers < ActiveRecord::Migration[5.1]
  
  def up
  	create_table :lists_users, :id => false do |t|

  		t.integer "user_id"
  		t.integer "list_id"
  	end
  	add_index("lists_users", ["user_id", "list_id"])
  end

  def down
  	drop_table :lists_users
  end

end
