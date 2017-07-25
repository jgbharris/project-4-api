class NewsController < ApplicationController
  skip_before_action :authenticate_user!

def news

news = HTTParty.get("https://newsapi.org/v1/articles?source=bloomberg&apiKey=#{ENV["NEWS_API_KEY"]}")

render json: news, status: :ok
puts news

end

end
