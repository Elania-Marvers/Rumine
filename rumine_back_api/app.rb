require 'sinatra'
require 'json'

# Define the Sinatra application
class RumineAPI < Sinatra::Base
  set :bind, '0.0.0.0'
  set :port, 9992
  
  
  get '/' do
    content_type :json
    { 
    title: "Rumine", 
    slogan: "Rumine and your anime list is full!" 
  }.to_json
end
end

# Run the application by starting the web server
RumineAPI.run! if __FILE__ == $0
