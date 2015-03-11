class ProgramCycle < ActiveRecord::Base
  has_many :progresses
  has_many :target_organizations, through: :progresses, source: :organization

  validates_presence_of :name
end
