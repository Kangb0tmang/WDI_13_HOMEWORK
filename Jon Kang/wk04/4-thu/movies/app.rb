require 'httparty'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
   erb :index
end

get '/all-movies' do
   @search_params = params[:movie]
   search_movies = HTTParty.get("http://omdbapi.com/?s=#{@search_params}&type=movie&apikey=#{ENV['OMDB_API_KEY']}")
   all_movies = []
   search_movies.parsed_response["Search"].each do |movie|
      all_movies.push(movie)
   end
   @all_movies = all_movies
   erb :all_movies
end

get '/about' do
   @params = params["movie"]
   single_movie = HTTParty.get("http://omdbapi.com/?t=#{@params}&type=movie&apikey=#{ENV['OMDB_API_KEY']}")
   @title = single_movie.parsed_response["Title"]
   @year = single_movie.parsed_response["Released"]
   @runtime = single_movie.parsed_response["Runtime"]
   @actors = single_movie.parsed_response["Actors"]
   @plot = single_movie.parsed_response["Plot"]
   @awards = single_movie.parsed_response["Awards"]
   @poster = single_movie.parsed_response["Poster"]
   erb :about
end

# binding.pry

# get '/about' do
#    @params = params["movie"]
#    single_movie = HTTParty.get("http://omdbapi.com/?t=#{@params}&type=movie&apikey=#{ENV['OMDB_API_KEY']}")
#    @title = single_movie.parsed_response["Title"]
#    @year = single_movie.parsed_response["Released"]
#    @runtime = single_movie.parsed_response["Runtime"]
#    @actors = single_movie.parsed_response["Actors"]
#    @plot = single_movie.parsed_response["Plot"]
#    @awards = single_movie.parsed_response["Awards"]
#    @poster = single_movie.parsed_response["Poster"]
#    erb :about
#    # binding.pry
# end
