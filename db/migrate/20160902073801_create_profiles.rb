class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :contact
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
