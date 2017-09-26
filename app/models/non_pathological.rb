class NonPathological < ApplicationRecord

  belongs_to :patient
  belongs_to :doctor

  has_one :claim, :through => :patient, :source => :claims
end
