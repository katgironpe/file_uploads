json.array!(@add_file_to_attachments) do |add_file_to_attachment|
  json.extract! add_file_to_attachment, :id
  json.url add_file_to_attachment_url(add_file_to_attachment, format: :json)
end
