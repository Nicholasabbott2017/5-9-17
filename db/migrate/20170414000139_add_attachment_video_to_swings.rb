class AddAttachmentVideoToSwings < ActiveRecord::Migration
  def self.up
    change_table :swings do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :swings, :video
  end
end
