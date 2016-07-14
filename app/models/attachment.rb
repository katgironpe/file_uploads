class Attachment < ApplicationRecord
  belongs_to :node, inverse_of: :attachments

  has_attached_file :file

  validates_attachment_content_type :file, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "text/html"]
end
