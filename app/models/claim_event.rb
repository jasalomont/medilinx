class ClaimEvent < ApplicationRecord

  belongs_to :patient
  has_many :attachments, :dependent => :destroy
  has_many :claims
  has_one :claim_follow

end
