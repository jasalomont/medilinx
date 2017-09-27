class BrokerRelation < ApplicationRecord

  belongs_to :patient
  belongs_to :insurer 
end
