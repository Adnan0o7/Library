class IssueBook < ActiveRecord::Base
  has_one :book
  has_one :user
end
