class AddAttachmentAvatarToInstruments < ActiveRecord::Migration
  def self.up
    change_table :instruments do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :instruments, :avatar
  end
end
