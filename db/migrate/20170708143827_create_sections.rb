class CreateSections < ActiveRecord::Migration[5.1]
  
  def up
    create_table :sections do |t|
    	t.integer "list_id"
    	t.string "name"
    	t.integer "position"

      t.timestamps
    end
    add_index("sections", "list_id")
  end

  def down
  	drop_table :sections
  end

end
