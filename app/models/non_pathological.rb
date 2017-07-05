class NonPathological < ApplicationRecord
  belongs_to :patient
  has_one :claim, :through => :patient, :source => :claims
end
