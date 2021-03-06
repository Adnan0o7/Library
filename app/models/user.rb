class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile , dependent: :destroy
  has_many :books
  has_one :role, :through => :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable
  before_destroy :check_issued_books

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

  private
  def check_issued_books
    errors.add(:base, "Cannot destroy user as book is issued by him..!") unless user.books.blank?

    errors.blank?
  end
end