class Organization < ActiveRecord::Base
  # self.inheritance_column = nil
  ORGANIZATION_TYPE = [%w(Organization organization), %w(School school), %w(Other other)]

  belongs_to :region

  has_many :courses
  has_many :participants
  has_many :school_representatives
  has_many :school_time_slots
  has_many :progresses
  has_many :program_cycles, through: :progresses, source: :program_cycle
end
