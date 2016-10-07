# This migration comes from mailboxer_engine (originally 20151123194517)
class CreateMessageAttachments < ActiveRecord::Migration
  def change
    create_table :mailboxer_message_attachments do |t|
      t.integer :message_id
      t.column :attachment, :string
      t.string :tag
      t.timestamps
    end
    remove_column :mailboxer_notifications, :attachment
  end
end
