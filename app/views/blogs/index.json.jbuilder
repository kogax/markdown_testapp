json.array!(@blogs) do |blog|
  json.extract! blog, :title, :body
  json.url blog_url(blog, format: :json)
end
