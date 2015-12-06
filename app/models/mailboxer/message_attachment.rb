class Mailboxer::MessageAttachment < ActiveRecord::Base
  attr_accessible :attachment
  belongs_to :mailboxer_message
  self.table_name = :mailboxer_message_attachments
  mount_uploader :attachment, AttachmentUploader
end
