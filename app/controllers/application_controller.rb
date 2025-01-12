
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
   # single department
   get '/employees/:id' do 
    depts=Department.where(id:params[:id])
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
  #get all tasks
  get '/tasks' do
    tsk=Task.all
    tsk.to_json

  end
   # single task
   get '/task/:id' do 
    task=Task.where(id:params[:id])
    task.to_json
  end
   # single employee
   get '/tasks/:id' do 
    tsk=Task.where(id:params[:id])
    tsk.to_json
  end
  #add new task
  post '/tasks' do
    tsk=Task.new(params)
    tsk.save
    tsk.to_json
  end
#edit single task
  patch '/tasks/:id' do
    tsk = Task.find(params[:id])
    tsk.update(params)
    tsk.to_json
  end
  #delete task
  delete '/tskremove/:id' do 
    tsk = Task.find(params[:id])
    tsk.destroy 
    tsk.to_json
  end

end
