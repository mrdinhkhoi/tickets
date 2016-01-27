json.array!(@ticket_attachments) do |ticket_attachment|
  json.extract! ticket_attachment, :id, :ticket_id, :image
  json.url ticket_attachment_url(ticket_attachment, format: :json)
end
