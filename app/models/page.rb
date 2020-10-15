class Page < ApplicationRecord
  belongs_to :subject, optional: true

  has_many :sections
  has_and_belongs_to_many :admin_users
  # has_and_belongs_to_many :admin_users, :join_table => "admin_users_pages"

  scope :ordered, -> { order(:position => :asc) }

  validates_presence_of :name
  validates_length_of :name, :maximum => 25

  validates_presence_of :permalink
  validates_length_of :permalink, :within => 3..25
  validates_uniqueness_of :permalink
end
