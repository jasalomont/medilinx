class Credential < ApplicationRecord

  validates :doctor_id, presence: true, uniqueness:  {message: "ya tiene credenciales"}
  belongs_to :doctor


end
