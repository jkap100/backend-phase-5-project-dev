# USERS
User.create(username: "jon", password:"jon", email:"jon@jon.com", admin: true)
puts "Seeding Complete"

# ADDRESSES

Address.create(street: "12345 Street", city: "Portland", state: "Oregon", user_id: 1 )