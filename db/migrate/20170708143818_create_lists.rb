class CreateLists < ActiveRecord::Migration[5.1]
  
  def up
    create_table :lists do |t|
    	t.integer "user_id"
    	t.string "name"
    	t.string "permalink"
    	t.integer "position"


      t.timestamps
    end
    add_index("lists", 'user_id')
    add_index("lists", "permalink")
  end

  def down
  	drop_table :lists
  end

end
