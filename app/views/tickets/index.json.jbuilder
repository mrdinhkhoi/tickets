json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :from, :subject, :content
  json.url ticket_url(ticket, format: :json)
end
