$1
uri = URI.parse("https://example.com/some/path")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
@data = http.get(uri.request_uri)
