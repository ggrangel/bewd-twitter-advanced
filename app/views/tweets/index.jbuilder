json.tweets do
  json.array! @tweets do |tweet|
    json.id tweet.id
    json.username tweet.user.username
    json.message tweet.message

    if tweet.image.attached?
      json.image url_for(tweet.image)
    else
      json.image nil
    end
  end
end
