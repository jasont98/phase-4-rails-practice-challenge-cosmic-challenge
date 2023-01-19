class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet

  validates_presence_of :name, :scientist, :planet
  validates_uniqueness_of :scientist, :scope => :planet
end
