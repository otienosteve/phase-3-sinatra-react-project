# Company  Project
## The project is Composed of 3 modules
### - Employee
### - Task
### - Department

### The data is rendered through the API and is available for consumption by any frontend- In my CaseI will be using React

## Running the application 

## ` bundle exec rackup config.ru `

## Model Schemas
## Employee

 ```
 f_name : string,
 l_name : string,
 salary :string,
 age :integer,
 designation :string 
 ```

 ## Tasks

 ``` 
"title": string
"description" :string
"completed" :boolean 
  ```
  ## Departments

``` 
"head" :string
"name" :string
"employee_no" :integer 
```

## The above schemas support the following HTTP Verbs

``` 
GET  schemaname (departments)
GET  schemaname/id (departments)
POST schemaname (departments)
PATCH schemaname/id (departments)
DELETE schemaname (departments)
```




