require 'sinatra'

class App < Sinatra::Base

  set :default_content_type, 'application/json'


  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    my_potatoes = "Boil 'em, mash 'em, stick 'em in a stew" 
    {waruu: my_potatoes}.to_json
  end
  
  get '/morris' do 
    my_name = "Morris"
    {name: my_name}.to_json
  end

  get '/dice' do 
    dice_roll = rand(1..6)
    {roll: dice_roll}.to_json
  end

  get '/names' do
    all_names = ["Morris", "Gitonga"]
    {names: all_names}.to_json
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    {result: sum}.to_json
  end

  get '/numbers/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    total = num1 * num2
    {result: total}.to_json
  end
end

run App
