class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :username
			t.string :name
			t.string :email
			t.string :avatar_url
			t.string :encrypted_password
    end
  end
end
