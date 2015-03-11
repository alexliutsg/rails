class Progress < ActiveRecord::Base
  PITCHING_STATUS = [%w(Un-pitched un-pitched), %w(Rejected rejected), %w(Committed committed), %w(Undecided undecided)]
  PROGRAM_STATUS = [%w(N/A na), %w(Unscheduled unscheduled), %w(Scheduled\ Confirmed schedule-confirmed), %w(In\ Progress in-progress), %w(Completed completed)]

  belongs_to :program_cycle, foreign_key: :program_cycle_id
  belongs_to :organization, foreign_key: :organization_id

  validates_uniqueness_of :program_cycle_id, scope: :organization_id
  validates_presence_of :program_cycle_id
  validates_presence_of :organization_id
end
