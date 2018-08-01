require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:greeter/:greetee" do
    @greeter = params[:greeter]
    @greetee = params[:greetee]
    "Hello #{@greetee}!"
  end

  # Code your final two routes here:
  get'/goodbye/:name' do
    @user_name  = params[:name]
    "Goodbye, #{@user_name}."
  end
end