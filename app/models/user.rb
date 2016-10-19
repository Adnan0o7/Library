class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  has_many :books
  has_many :issue_books
  has_one :role, :through => :profile
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable

  def is_superadmin?
    self.role.name == 'superadmin'
  end

  def is_admin?
    self.role.name == 'admin'
  end

  def user?
    self.role.name == 'user'
  end

  def name
    self.profile.first_name.nil? ? self.email : (self.profile.first_name + ' ' + self.profile.last_name)
  end
end