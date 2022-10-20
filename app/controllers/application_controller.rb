
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  # Add your routes here

  # main route
  get '/' do
    # binding.pry
    { message: "root " }.to_json
  end

  #all employees
  get '/employees' do
    # binding.pry
    employees= Employee.all
    employees.to_json
  end

  # single employee
  get '/employee/:id' do 
    { message: "specific employee" }.to_json
  end

  # departments
  get '/departments' do
    { message: "departments " }.to_json

  end
  #specific department
  post '/departments/:id' do
    { message: "specific department" }.to_json

  end

  #fire employee
  delete '/employee/:id' do 
    { message: "specific department" }.to_json
  end

end
