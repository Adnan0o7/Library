class AddColumnToIssueBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_books, :user_id, :numeric
  end
end
