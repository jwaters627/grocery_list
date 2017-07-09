class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]

  def up
  	remove_column "users", "password"
  	add_column "users", "password_digeset", :string
  end

  def down
  	remove_column "users", "password_digeset"
  	add_column "users", "password", :string
  end

end
