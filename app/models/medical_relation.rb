class MedicalRelation < ApplicationRecord

# validates :patient_id, :presence => true, :uniqueness=> {:scope => :doctor_id}

belongs_to :doctor
has_many :events


has_one :credential, :through => :doctor, :source => :credentials
#
# filterrific(
#   default_filter_params: { sorted_by: 'doctor_id_desc' },
#   available_filters: [
#     :sorted_by,
#     :search_query,
#     :with_doctor_id,
#
#   ]
# )
# # define ActiveRecord scopes for
# # :search_query, :sorted_by, :with_doctor_id

end
