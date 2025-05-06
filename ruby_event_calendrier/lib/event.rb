require 'time'
class Event
      attr_accessor :start_date, :duration, :title, :attendees

      @@event_count = 0

      def initialize(start_date, duration, title, attendees)
        @start_date = start_date
        @duration = duration
        @title = title
        @attendees = attendees

        @@event_count += 1
      end
# # methode pour recuperer les infos de l'evenement
      def self.count
        @@event_count
      end
 #  1) Déterminer la date de fin d'un événement
      def end_date
           @start_date + (@duration * 60)  # Convertir la durée en secondes
      end

# 2) Vérifier si un événement est passé
      def is_past?
          Time.now > @start_date
      end

# 3) Vérifier si un événement est dans le futur
      def is_future?
          Time.now < @start_date
      end

#  4) Vérifier si un événement commence dans moins de 30 minutes
      def is_soon?
        (@start_date - Time.now) < (30 * 60)  # Moins de 30 min
      end

#  methode pour afficher les infos de l'evenenemt
      def display_info
        puts "Événement : #{@title}"
        puts "Date de début : #{@start_date}"
        puts "Durée : #{@duration} mimutes"
        puts "Participants : #{@attendees.join(', ')}"
      end
#  5) Décaler l'événement de 24h

def self.create_event
  puts "Salut, tu veux créer un événement ? Cool !"
  
  print "Quel est le nom de l'événement ? "
  title = gets.chomp

  print "Quand aura-t-il lieu ? (format : YYYY-MM-DD HH:MM) "
  start_date = gets.chomp

  print "Combien de temps va-t-il durer (en minutes) ? "
  duration = gets.chomp.to_i

  print "Qui va participer ? (séparez les emails par des virgules) "
  attendees = gets.chomp.split(',').map(&:strip)

  event = Event.new(start_date, duration, title, attendees)

  puts "\nSuper, ton évènement a été créé ! 🎉"
  event.to_s
end
end

