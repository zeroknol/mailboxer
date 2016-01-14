class Mailboxer::AttachmentUploader < CarrierWave::Uploader::Base
  storage ( Rails.env.production? || Rails.env.staging?) ? :fog : :file
end
