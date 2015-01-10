json.array!(@pdffiles) do |pdffile|
  json.extract! pdffile, :id, :url, :filename
  json.url pdffile_url(pdffile, format: :json)
end
