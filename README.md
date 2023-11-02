# Ruby on Rails for scratch

![Ruby gif](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExM2d3NTNpNHRib3RramV2cTNpNnd5dG1qY3ZqazZhcDN5ajhzd2VzeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/vDKeAFPrMRW9PqChq8/giphy.gif)

### RoR -> MVC

* Model -> Request, validation before save
* View -> Return to user html, pdf, csv, json; whatever than the browser can display
* Controller -> Logic

## Create new project
```
rails new 'my_app' -d 'database'
```

## Start project on local
```
rails s // (server)
```
## Model

* Create model
rails generate model 'model's_name' + attribute:type, example:
```
rails generate model People name:string description:text age:integer weight:float
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

## Partials
HTML code that can be reudes in any view, example: header, footer
All the partials must be write with '_' at the beginning of the word

## Some quickly notes
Model on singular: Product
Controller plural: Products

@tamales -> Instance variable. This var will can use it on display

localhost:3000/rails/info/routes -> return all routes/url that you've been declared

<%= link_to 'route'%> -> define an ancord