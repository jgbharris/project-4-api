class IntrinioController < ApplicationController
  skip_before_action :authenticate_user!

  def stock_info

    username = "#{ENV["INTRINIO_USERNAME"]}"
    password = "#{ENV["INTRINIO_PASSWORD"]}"
    request_url = "https://api.intrinio.com/companies?ticker=AAPL"
    auth = { :username => username, :password => password }


    response = HTTParty.get(request_url, {
      :basic_auth => auth
      })

      render json: response, status: :ok
      puts response

  end

  def stock_price

    username = "#{ENV["INTRINIO_USERNAME"]}"
    password = "#{ENV["INTRINIO_PASSWORD"]}"
    request_url = "https://api.intrinio.com/prices?identifier=AAPL"
    auth = { :username => username, :password => password }

    response = HTTParty.get(request_url, {
      :basic_auth => auth
      })

      render json: response, status: :ok
      puts response
  end
end
