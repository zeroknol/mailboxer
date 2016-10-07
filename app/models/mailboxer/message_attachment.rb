class Mailboxer::MessageAttachment < ActiveRecord::Base
  attr_accessible :attachment if Mailboxer.protected_attributes?
  belongs_to :mailboxer_message
  self.table_name = :mailboxer_message_attachments

  include Mailboxer.attachment_uploader.constantize[:attachment]
  #include Mailboxer::AttachmentUploader[:attachment]
end
