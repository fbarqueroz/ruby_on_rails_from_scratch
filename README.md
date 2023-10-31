# Notebook

### RoR -> MVC

* Model -> Request, validation before save
* View -> Return to user html, pdf, csv, json; whatever than the browser can display
* Controller -—> Logic

## Create new project
rails new 'my_app' -d 'database'

## Start project on local
```
rails s // (server)
```
## Model

* Create model
```
rails generate model 'model's_name' + attribute:type -> title:string description:text age:integer weight:float
```

* Execute the db migrate
```
rails db:migrate
```

* Excecute Ruby console
```
rails console
```

* Insert data on DB attributes
```
ModelName.create(*the attributes values goes here*, example -> title: 'Yellow shirt', description: 'Size: L, Dry Fit', price: 200)
```


### Some quickly notes
Model on singular: Product
Controller plural: Products