class Mailboxer::MessageAttachment < ActiveRecord::Base
  belongs_to :mailboxer_message
  self.table_name = :mailboxer_message_attachments
  mount_uploader :attachment, AttachmentUploader
end
