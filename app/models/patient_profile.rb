class PatientProfile < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
end
