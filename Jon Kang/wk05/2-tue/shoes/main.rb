require 'pg'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

def db_connect(sql)
   conn = PG.connect(dbname: 'shoes')
   return conn.exec(sql)
end

# Create
get '/kicks/new' do
   erb :new
end

post '/kicks' do
   sql = "INSERT INTO kicks(name, image_url, video_link) VALUES('#{params[:name]}', '#{params[:image_url]}', '#{params[:video_link]}');"
   db_connect(sql)
   redirect '/kicks'
end

# Read
get '/' do
   redirect '/kicks'
end

get '/kicks' do
   @kicks = db_connect('SELECT * FROM kicks;')
   erb :kicks
end

get '/kicks/:id' do
   sql = "SELECT * FROM kicks WHERE id = #{params[:id]};"
   @pair = db_connect(sql).first
   erb :pair
end

# Update
get '/kicks/:id/update' do
   sql = "SELECT * FROM kicks WHERE id = #{params[:id]};"
   @pair = db_connect(sql).first
   erb :update
end

put '/kicks/:id' do
   sql = "UPDATE kicks SET name = '#{params[:name]}', image_url = '#{params[:image_url]}', video_link = '#{params[:video_link]}' WHERE id = #{params[:id]};"
   db_connect(sql)
   redirect "/kicks/#{params[:id]}"
end

# Delete
get '/kicks/:id/delete' do
   sql = "SELECT * FROM kicks WHERE id = #{params[:id]};"
   @pair = db_connect(sql).first
   erb :delete
end

delete '/kicks/:id' do
   sql = "DELETE FROM kicks WHERE id = #{params[:id]};"
   db_connect(sql)
   redirect '/kicks'
end

# class HelloWorld < Sinatra::Base
# end
