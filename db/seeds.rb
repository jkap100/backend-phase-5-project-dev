# USERS
User.create(username: "jon", password:"jon", email:"jon@jon.com", admin: true)
puts "Seeding Complete"

# ADDRESSES

Address.create(street: "12345 Street", city: "Portland", state: "Oregon", user_id: 1 )

#CRUST
Crust.create(name: "Thin", price: 5, image: "crust image")
Crust.create(name: "Regular", price: 5, image: "crust image")
Crust.create(name: "Thick", price: 5, image: "crust image")
Crust.create(name: "Pan", price: 5, image: "crust image")
Crust.create(name: "Stuffed", price: 5, image: "crust image")
Crust.create(name: "Gluten Free", price: 5, image: "crust image")

#SAUCE
Sauce.create(name: "Classic Marinara", price: 2, image: "sauce image")
Sauce.create(name: "Zesty Red", price: 2, image: "sauce image")
Sauce.create(name: "White Garlic", price: 2, image: "sauce image")
Sauce.create(name: "Ranch", price: 2, image: "sauce image")
Sauce.create(name: "BBQ", price: 2, image: "sauce image")
Sauce.create(name: "Mystery", price: 2, image: "sauce image")


#TOPPINGS
Topping.create(name: "Pepperoni", category: "Meat", price: 2, image: "topping image")
Topping.create(name: "Sausage", category: "Meat", price: 2, image: "topping image")
Topping.create(name: "Mushrooms", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Canadian Bacon", category: "Meat", price: 2, image: "topping image")
Topping.create(name: "Onions", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Peppers", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Chicken", category: "Meat", price: 2, image: "topping image")
Topping.create(name: "Black Olives", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Spinach", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Tomato", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Fresh Basil", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Pesto", category: "Veggies", price: 2, image: "topping image")
Topping.create(name: "Meatballs", category: "Meat", price: 2, image: "topping image")
Topping.create(name: "Pulled Pork", category: "Meat", price: 2, image: "topping image")


#Stores
Store.create(name: "South Waterfront", street: "672 S Gaines St #2", city: "Portland", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "503-245-7000", lat: 45.4962086, lng: -122.6711421)

Store.create(name: "Pearl", street: "1405 NW Johnson St", city: "Portland", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "971-360-5000", lat: 45.5290032, lng: -122.6855771)

Store.create(name: "LADD's Addition", street: "1954 SE Division St", city: "Portland", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "503-244-9000", lat: 45.5043279, lng: -122.6460567)

Store.create(name: "Multnomah", street: "7850 SW Capital Hwy", city: "Portland", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "503-245-8000", lat: 45.4676428, lng: -122.7137918)

Store.create(name: "LO", street: "401 A Ave", city: "Lake Oswego", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "971-246-3000", lat: 45.4208182, lng: -122.6683848)

Store.create(name: "Beaverton", street: "11425 SW Beaverton", city: "Beaverton", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "971-244-4000", lat: 45.487567, lng: -122.794757)

Store.create(name: "Lents", street: "4040 SE 82nd Ave", city: "Portland", state: "OR", open: "9:00 AM", close: "11:00 PM", phone: "971-650-6000", lat: 45.493328, lng: -122.5745717)

#PIZZA ORDERS
# PizzaOrder.create(user_id: 1, address_id: 1, store_id: 1, crust_id:1, sauce_id: 1, due_date: "Monday", due_time: 10, status: false, quantity: 1, image: "pizza order image")

#PIZZA ORDER TOPPINGS
PizzaOrderTopping.create(pizza_order_id: 1, topping_id: 1)

puts "Seeding Complete"