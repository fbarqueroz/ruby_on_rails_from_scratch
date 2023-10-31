# Notebook

RoR -> MVC

# Model -> Request, validation
# View -> Return to user html, pdf, csv, json; whatever than the browser can display
# Controller -—> Logic

## Create new project
rails new 'my_app' -d 'database'

## Start project on local
rails s (server)

## Create model
rails generate model 'model's_name' + attribute:type -> title:string description:text age:integer weight:float

### Some quickly notes
Model on singular: Product
Controller plural: Products