require 'sinatra'
require 'stripe'

# Home route
get '/' do
  erb :index
end

# Checkout route
get '/checkout' do
  # Just hardcoding amounts here to avoid using a database
  item = params[:item]
  
  case item
  when '1'
    @title = "The Art of Doing Science and Engineering"
    @amount = 2300
  when '2'
    @title = "The Making of Prince of Persia: Journals 1985-1993"
    @amount = 2500
  when '3'
    @title = "Working in Public: The Making and Maintenance of Open Source"
    @amount = 2800
  else
    # Included in layout view, feel free to assign @error
    @error = "No item selected"
  end

  erb :checkout
end

# Success message route
get '/success' do
  erb :success
end

# Format currencies
def format_currency(amount)
  sprintf('%0.2f', amount.to_f / 100.0).gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1,")
end