class CreateMessageAttachments < ActiveRecord::Migration
  def change
    create_table :mailboxer_message_attachments do |t|
      t.integer :message_id
      t.column :attachment_data, :text
      t.string :tag
      t.timestamps
    end
    remove_column :mailboxer_notifications, :attachment
  end
end
