class ClaimFollow < ApplicationRecord

belongs_to :claim_event
belongs_to :claim

end
