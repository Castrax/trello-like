# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Todo.destroy_all
List.destroy_all
User.destroy_all
puts "DB cleaned"

puts "creating user"
u1 = User.create(first_name: 'Mathilde', last_name: 'Robert', email: 'test@test.fr', password: 'testtest')
puts "User created"

puts "Creating lists"
list1 = List.create(name: 'to do', position: 1, user_id: u1.id)
list2 = List.create(name: 'doing', position: 2, user_id: u1.id)
list3 = List.create(name: 'done', position: 3, user_id: u1.id)
puts "Lists created"

puts "Creating todos"
todo1 = Todo.create(title: 'todo1', description: 'try to clean needle work', position: 1, list_id: list1.id, user_id: u1.id)
todo2 = Todo.create(title: 'todo2', description: 'learn Node.js', position: 2, list_id: list1.id, user_id: u1.id)
todo3 = Todo.create(title: 'todo3', description: 'make distant relatives', position: 3, list_id: list1.id, user_id: u1.id)
todo4 = Todo.create(title: 'todo4', description: 'tweet milk ', position: 1, list_id: list2.id, user_id: u1.id)
todo5 = Todo.create(title: 'todo5', description: 'learn Spanish', position: 2, list_id: list2.id, user_id: u1.id)
todo6 = Todo.create(title: 'todo6', description: 'cleaning the dog', position: 1, list_id: list3.id, user_id: u1.id)
puts "Todos created"
