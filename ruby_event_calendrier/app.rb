# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

user1 = User.new("user1@gmail.com", 32)
p user1.email
p user1.age
user2 =User.new("user2@gmail.com", 24)
puts user2.email
p user2.age


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

event1 = Event.new("2025-06-15", 40, "Conférence Tech", ["Alice", "Thales", "Issa"])
event2 = Event.new("2025-07-20", 20, "Concert Live", ["Babs", "Sala", "Khadyja"])
event2 = Event.new("2025-10-10", 20, "cours Tawhid", ["Babs", "Sala", "Khadyja"])
event2 = Event.new("2025-01-04", 30, "La vie du prophete", ["Babs", "Sala", "Khadyja", "Ousmane", "Anly", "Ahmed"])

event1.display_info
event2.display_info
event2.display_info
event2.display_info


puts "\nDécalage de l'événement de 24 heures..."

puts "Nombre total d'événements  : #{Event.count}"
