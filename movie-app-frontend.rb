require "http"

system "clear"
response = HTTP.get("http://localhost:3000/all_movies")

print response.parse(:json)