json.array!(@reviews) do |review|
  json.extract! review, :id, :reviews
  json.url review_url(review, format: :json)
end
