require 'sinatra'

get '/' do 
	erb :webpage
end

post '/webpage' do 
	password = params[:password]
	username = params[:username]
	if password = entry
		redirect '/winscreen'
	end
end
	
