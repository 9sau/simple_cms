class AdminUser < ApplicationRecord
  # rename the classname and filename if using a different model and table name
  # self.table_name = "admin_users"

  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits
end
