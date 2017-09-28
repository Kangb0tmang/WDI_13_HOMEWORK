require 'yahoofinance'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
   erb :index
end

get '/stocks' do
   @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, "#{params[:stocks]}")
   erb :stocks
   # binding.pry
end
