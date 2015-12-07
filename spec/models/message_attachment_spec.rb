require 'spec_helper'

describe Mailboxer::MessageAttachment do

  before do
    @entity1 = FactoryGirl.create(:user)
    @entity2 = FactoryGirl.create(:user)
    @attachments = [{ :file => File.open('spec/testfile.txt') }, { :file => File.open('spec/1.mp4') }]
    @mail1 = @entity1.send_message(@entity2,"Body","Subject", @attachments)
  end

  it "should belong to a message" do
    assert @mail1.message.message_attachments
  end

  it "should return two message attachments" do
    assert @mail1.message.message_attachments.count, 2
  end

end
