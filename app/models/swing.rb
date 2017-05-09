class Swing < ApplicationRecord
    has_attached_file :video, :styles => { :small => "150x150>" },
                  :url  => "/assets/swings/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/swings/:id/:style/:basename.:extension"
                

validates_attachment_presence :video
validates_attachment_size :video, :less_than => 5.megabytes
validates_attachment_content_type :video, :content_type => ['image/jpeg', 'image/png']
end