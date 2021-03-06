class AdminUser < ApplicationRecord
  # rename the classname and filename if using a different model and table name
  # self.table_name = "admin_users"

  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  # validates_presence_of :first_name
  # validates_length_of :first_name, :maximum => 25

  validates :first_name, :presence => true, :length => { :maximum => 25 }

  # validates_presence_of :last_name
  # validates_length_of :last_name, :maximum => 25

  validates :last_name, :presence => true, :length => { :maximum => 25 }

  # validates_presence_of :username
  # validates_length_of :username, :within => 8..25

  validates :username, :presence => true, :length => { :within => 8..25 }, :uniqueness => true

  # validates_presence_of :email
  # validates_length_of :email, :maximum => 40
  # validates_format_of :email, :with => EMAIL_REGEX
  # validates_confirmation_of :email

  validates :email, :presence => true, :length => { :maximum => 40}, :format => EMAIL_REGEX, :confirmation => true
end

