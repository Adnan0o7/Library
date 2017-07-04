class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :issued_on
      t.date :due_date
      t.integer :rating
      t.integer :user_id
      t.string :isbn

      t.timestamps null: false
    end
  end
end
