class Subject < ApplicationRecord
  has_many :pages
  # scope :visible, lambda { where(:visible => true) }
  scope :visible, -> { where(:visible => true) }
  scope :invisible, -> { where(:visible => false) }
  scope :sorted, -> { order(:position => :asc) }
  scope :newest_first, -> { order("created_at DESC") }
  scope :search, lambda { |q| where(["name like ?", "%#{q}%"]) }

  validates_presence_of :name
  validates_length_of :name, :maximum => 25
end
