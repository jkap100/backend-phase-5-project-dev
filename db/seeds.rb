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
Store.create(name: "JKaps Pizza 1", street: "1000 Water Ave", city: "Oacen View", state: "California", open: "9:00 AM", close: "11:00 PM", phone: 123456789)

#PIZZA ORDERS
PizzaOrder.create(user_id: 1, address_id: 1, store_id: 1, crust_id:1, sauce_id: 1, due_date: "Monday", due_time: 10, status: false, quantity: 1, image: "pizza order image")

#PIZZA ORDER TOPPINGS
PizzaOrderTopping.create(pizza_order_id: 1, topping_id: 1)

puts "Seeding Complete"