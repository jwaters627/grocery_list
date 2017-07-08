class CreateItems < ActiveRecord::Migration[5.1]
  
  def up
    create_table :items do |t|
    	t.integer "section_id"
    	t.string "name"
    	t.string "brand"
    	t.text "description"
    	t.integer "position"

      t.timestamps
    end
    add_index("items", "section_id")
  end

  def down
  	drop_table :items
  end

end
