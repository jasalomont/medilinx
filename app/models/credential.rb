class Credential < ApplicationRecord

  # validates :doctor_id, presence: true, uniqueness:  {message: "ya tiene credenciales"}
  
  has_many :medical_relations, :through => :doctor, :source => :medical_relations


end
