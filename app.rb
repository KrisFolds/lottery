require 'sinatra'
require_relative 'lottery.rb'

get '/' do
	erb :home
	
end

post '/get_numbers' do
	number1 = params[:number1]
	number2 = params[:number2]
	number3 = params[:number3]
	number4 = params[:number4]
	number5 = params[:number5]
	number6 = params[:number6]
	redirect '/final?number1=' + number1 + '&number2=' + number2 + '&number3=' + number3 + '&number4=' + number4 + '&number5=' + number5 + '&number6=' + number6
end

get '/final' do 
	number1 = params[:number1].to_i
	number2 = params[:number2].to_i
	number3 = params[:number3].to_i
	number4 = params[:number4].to_i
	number5 = params[:number5].to_i
	number6 = params[:number6].to_i
	erb :final, :locals => {:number1 => number1, :number2 => number2, :number3 => number3, :number4 => number4, :number5 => number5, :number6 => number6}
end



		