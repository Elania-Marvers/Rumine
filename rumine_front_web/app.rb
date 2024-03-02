require 'sinatra'
require 'json'
require 'net/http'

# Define the Sinatra application
class RumineFront < Sinatra::Base
  # Configure Sinatra to listen on all interfaces and port 9991
  set :bind, '0.0.0.0'
  set :port, 9991

  # Route to fetch data from the back-end API
  get '/' do
    # Make a request to the back-end API
    uri = URI('http://rumine_back_api:9992/')
    response = Net::HTTP.get(uri)

    # Parse the JSON response
    data = JSON.parse(response)

    # Render the response in HTML
    erb :index, locals: { data: data }
  end
end

# Run the application by starting the web server
RumineFront.run! if __FILE__ == $0
