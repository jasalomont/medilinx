class OfficeProfile < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :medical_relation
end
