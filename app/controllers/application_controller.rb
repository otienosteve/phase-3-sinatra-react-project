
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
  get '/employees/:id' do 
    emp=Employee.where(id:params[:id])
    emp.to_json
  end

  post '/newemployee' do
    # binding.pry
    detail = Employee.new(params)
    detail.save
    detail.to_json
  end
 
  #edit employee
    patch '/remove/:id' do 
    emp = Employee.find(params[:id])
    emp.destroy 
    emp.to_json
   end

    #fire employee
  delete '/remove/:id' do 
    emp = Employee.find(params[:id])
    emp.destroy 
    emp.to_json
  end
  patch '/employee/:id' do
    emp = Employee.find(params[:id])
    emp.update(params)
    emp.to_json
  end
   # departments
   get '/departments' do
    depts=Department.all
    depts.to_json

  end
  #add  department
  post '/departments' do
  depts=Department.new(params)
  depts.save
  depts.to_json
  end
  # edit department
  patch '/department/:id' do
    dept = Department.find(params[:id])
    dept.update(params)
    dept.to_json
  end
  #delete 
  delete '/dptremove/:id' do 
    dept = Department.find(params[:id])
    dept.destroy 
    dept.to_json
  end
  get '/tasks' do
    tsk=Task.all
    tsk.to_json

  end
  # post '/tasks' do
  #   tsk=Task.new(params)
  #   tsk.save
  #   tsk.to_json
  # end
  # patch '/task/:id' do
  #   tsk = Task.find(params[:id])
  #   tsk.update(params)
  #   tsk.to_json
  # end


end
