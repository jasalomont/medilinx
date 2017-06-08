class MedicalRelation < ApplicationRecord
  validates :patient_id, :presence => true, :uniqueness=> {:scope => :doctor_id}

belongs_to :doctor
belongs_to :patient
end
