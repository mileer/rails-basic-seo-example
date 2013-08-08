json.array!(@reports) do |report|
  json.extract! report, :title, :author, :published
  json.url report_url(report, format: :json)
end
