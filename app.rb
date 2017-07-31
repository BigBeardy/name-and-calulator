require 'sinatra'
require_relative 'calculatormath.rb'

get '/' do 
	erb :webpage
end

post '/webpage' do 

entered_password = params[:password]
set_password = "westwest"
# entry = [westwest]
	unless entered_password == set_password
	redirect '/wrong?password=' + entered_password
	else
	redirect '/winscreen?password=' + entered_password
	end
end

get '/wrong' do 
	entered_password = params[:password]
	erb :wrong, :locals => {:entered_password => entered_password} 
end

get '/winscreen'do 
entered_password = params[:password]
erb :winscreen, :locals => {:entered_password => entered_password}
end

post '/name' do

userfirstname = params[:firstname]
userlastname = params[:lastname]
redirect '/radio?firstname=' + userfirstname + '&lastname=' + userlastname
end

get '/radio' do
userfirstname = params[:firstname]
userlastname = params[:lastname]
# usernumber1 = params[:num1]
# usernumber2 = params[:num2]
# group = params[:group]
erb :calculator, :locals => {:userfirstname => userfirstname, :userlastname => userlastname} #:usernumber1 => usernumber1, :usernumber2 => usernumber2, :group => group}
end

post '/radio' do
userfirstname = params[:firstname]
userlastname = params[:lastname]
usernumber1 = params[:num1]
usernumber2 = params[:num2]
answer = params[:answer]
group = params[:group]
answer = math(group,usernumber1,usernumber2)
redirect '/results?firstname=' + userfirstname + '&lastname=' + userlastname + '&num1=' + usernumber1 + '&num2=' + usernumber2 + '&group=' + group + '&answer=' + answer
end

get '/results' do 
userfirstname = params[:firstname]
userlastname = params[:lastname]
usernumber1 = params[:num1]
usernumber2 = params[:num2]
answer = params[:answer]
group = params[:group]
erb :results, :locals => {:userfirstname => userfirstname, :userlastname => userlastname, :usernumber1 => usernumber1, :usernumber2 => usernumber2, :group => group, :answer => answer}
end


