class Attachment < ApplicationRecord

  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   validates :claim_id, presence: true # Make sure the owner's name is present.

   belongs_to :claim

end
