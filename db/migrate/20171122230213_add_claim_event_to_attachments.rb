class AddClaimEventToAttachments < ActiveRecord::Migration[5.0]
  def change

    add_column :credentials, :url, :string
    add_column :credentials, :first_name, :string
    add_column :credentials, :last_father, :string
    add_column :credentials, :last_mother, :string
    add_column :credentials, :gender, :string
    add_column :broker_credentials, :url, :string
    add_column :claims, :claim_event_id, :integer
    add_column :attachments, :claim_event_id, :integer
    add_column :claim_follows, :claim_event_id, :integer

  end
end
