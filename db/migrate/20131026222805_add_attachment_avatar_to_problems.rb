class AddAttachmentAvatarToProblems < ActiveRecord::Migration
  def self.up
    change_table :problems do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :problems, :avatar
  end
end
