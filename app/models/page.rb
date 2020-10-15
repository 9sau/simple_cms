class Page < ApplicationRecord
  belongs_to :subject, optional: true

  has_many :sections
  has_and_belongs_to_many :admin_users
  # has_and_belongs_to_many :admin_users, :join_table => "admin_users_pages"

  scope :ordered, -> { order(:position => :asc) }
end
