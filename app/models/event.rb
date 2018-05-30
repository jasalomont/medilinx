class Event < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :medical_relation
  has_one :evol_mednote

  # validates :encounter_type, presence: true

end
