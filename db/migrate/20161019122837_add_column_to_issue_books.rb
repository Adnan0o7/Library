class AddColumnToIssueBooks < ActiveRecord::Migration
  def change
    add_column :issue_books, :user_id, :numeric
  end
end
