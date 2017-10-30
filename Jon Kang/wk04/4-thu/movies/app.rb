require 'httparty'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
   erb :index
end

get '/all-movies' do
   @search_params = params[:movie]
   @search_movies = HTTParty.get("http://omdbapi.com/?s=#{@search_params}&type=movie&apikey=#{ENV['OMDB_API_KEY']}").parsed_response["Search"]
   if @search_movies == nil
      erb :no_results
   elsif @search_movies.count == 1
      redirect "/about?movie=#{@search_params}"
   else
      erb :all_movies
   end
   # binding.pry
end

get '/about' do
   @movie_query = params[:movie]
   @search_movie = HTTParty.get("http://omdbapi.com/?t=#{@movie_query}&type=movie&apikey=#{ENV['OMDB_API_KEY']}")
   erb :about
   # binding.pry
end
