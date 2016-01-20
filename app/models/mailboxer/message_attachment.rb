class Mailboxer::MessageAttachment < ActiveRecord::Base
  attr_accessible :attachment if Mailboxer.protected_attributes?
  belongs_to :mailboxer_message
  self.table_name = :mailboxer_message_attachments
  mount_uploader :attachment, Mailboxer.attachment_uploader.constantize
end
