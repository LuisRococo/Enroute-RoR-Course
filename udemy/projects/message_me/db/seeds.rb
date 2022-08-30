# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(username: 'root', password: 'root')
user_2 = User.create(username: 'luisro', password: '12345')
user_3 = User.create(username: 'test', password: 'test')

message_1 = Message.new(body: 'Este es un nuevo mensaje')
message_2 = Message.new(body: '¿ Como estas ?')
message_3 = Message.new(body: 'Vamos a la playa')

user_1.messages << message_1.dup
user_1.messages << message_2.dup
user_1.messages << message_3.dup
user_2.messages << message_1.dup
user_2.messages << message_2.dup
user_2.messages << message_3.dup
user_3.messages << message_1.dup
user_3.messages << message_2.dup
user_3.messages << message_3.dup
