class Employee< ActiveRecord::Base 
belongs_to :department, class_name: "department", foreign_key: "department_id"
belongs_to :Tasks, class_name: "Tasks", foreign_key: "tasks_id"
end