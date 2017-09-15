class EvolMednote < ApplicationRecord

  belongs_to :doctor
  belongs_to :patient
  belongs_to :event

end
