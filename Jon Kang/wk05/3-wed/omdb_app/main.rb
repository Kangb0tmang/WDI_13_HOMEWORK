require 'httparty'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require_relative 'db_config'
require_relative 'models/movie'

# IMDBId(Save to DB), Title, Release Date, Runtime, Actors, Plot, Ratings(IMDB), Poster

get '/' do
   # raise 'Error'
   erb :index
end

get '/all-movies' do
   @search_params = params[:movie]
   @search_movies = HTTParty.get("http://omdbapi.com/?s=#{@search_params}&type=movie&apikey=#{ENV['OMDB_API_KEY']}").parsed_response["Search"]
   # @imdb_id = @search_movies["imdbID"]
   if @search_movies == nil
      erb :no_results
   elsif @search_movies.count == 1
      @imdb_id = @search_movies.first["imdbID"]
      redirect "/about?movie=#{@search_params}"
   else
      erb :all_movies
   end
   # binding.pry
end

get '/about' do
   # Search for imdbID instead
   # if movie exists
   #    get data
   # else
   #    write to DB
   # end
   @imdb_id = params[:movie]
   @db_movie = Movie.where(imdb_id: @imdb_id)
   if @db_movie
      @search_movie = @db_movie
      # @search_movie = Movie.where(imdb_id: @imdb_id)
      erb :about
   else
      @movie_query = params[:movie]
      @search_movie = HTTParty.get("http://omdbapi.com/?i=#{@movie_query}&type=movie&apikey=#{ENV['OMDB_API_KEY']}")
      @movie = Movie.new
      @movie.name = @search_movie["Title"]
      @movie.release_date = @search_movie["Released"]
      @movie.runtime = @search_movie["Runtime"]
      @movie.actors = @search_movie["Actors"]
      @movie.plot = @search_movie["Plot"]
      @movie.poster_url = @search_movie["Poster"]
      @movie.imdb_id = @search_movie["imdbID"]
      @movie.rating = @search_movie["Ratings"][0]["Value"]
      @movie.save
      @search_movie = @movie
      erb :about
   end
   # binding.pry
   # OR (title: @results['Title'])
end
