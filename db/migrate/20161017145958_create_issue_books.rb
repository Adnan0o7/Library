class CreateIssueBooks < ActiveRecord::Migration
  def change
    create_table :issue_books do |t|

      t.timestamps null: false
    end
  end
end
