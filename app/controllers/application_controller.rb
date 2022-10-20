
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
    emp=Employee.where(id:params[:id])
    emp.to_json
  end

  # departments
  get '/departments' do
    depts=Department.all
    depts.to_json

  end
  #specific department
  post '/departments/:id' do
  depts=Department.where(id:params[:id])
  depts.to_json
  end

  #fire employee
  delete '/employee/:id' do 
    emp = Employee.find(params[:id])
    emp.destroy 
    emp.to_json
  end

end
