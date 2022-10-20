class Employees < ApplicationController
    post '/newemployee' do
        detail = Employee.new(params)
        detail.save
        detail.to_json
      end

end