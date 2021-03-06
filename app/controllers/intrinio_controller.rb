class IntrinioController < ApplicationController
  skip_before_action :authenticate_user!




  def companies
    username = ENV["INTRINIO_USERNAME"]
    password = ENV["INTRINIO_PASSWORD"]
    request_url = "https://api.intrinio.com/securities?query=#{params[:query]}"
    auth = { :username => username, :password => password }


    response = HTTParty.get(request_url, {
      :basic_auth => auth
      })

      render json: response, status: :ok
    #  puts response

  end

  def info

    username = ENV["INTRINIO_USERNAME"]
    password = ENV["INTRINIO_PASSWORD"]
    request_url = "https://api.intrinio.com/companies?ticker=#{params[:ticker]}"
    auth = { :username => username, :password => password }


    response = HTTParty.get(request_url, {
      :basic_auth => auth
      })

      render json: response, status: :ok
      puts response

  end

  def price

    username = "#{ENV["INTRINIO_USERNAME"]}"
    password = "#{ENV["INTRINIO_PASSWORD"]}"
    request_url = "https://api.intrinio.com/prices?identifier=#{params[:ticker]}"
    auth = { :username => username, :password => password }

    response = HTTParty.get(request_url, {
      :basic_auth => auth
      })

      render json: response, status: :ok
      puts response
  end
end
