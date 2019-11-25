# --------------------- MODELE D EVENT AVEC SES CHOIX ------------------
# event = Event.new({
#   title: ,
#   description: ,
#   image_url: nil,
#   })

#  event_choice_1 = Choice.new({
#   event_id: ,
#   title:  ,
#   description: ,
#   score_impact: ,
#   stress_impact: ,
# })

# event_choice_2 = Choice.new({
#   event_id: ,
#   title: ,
#   description: ,
#   score_impact: ,
#   stress_impact: ,
# })

# event.save
# event_choice_1.save
# event_choice_2.save

# -----------------------------------------------------------------------
Event.destroy_all

puts "Seeding User"
user_1 = User.new( first_name: "John", last_name: "Lennon", email: "johnlennon@lewagon.org", password:"123456")
user_1.save

puts " Creating a party"
game_1 = Game.new( score: 0, stress: 0, user_id: user_1)
game_1.save

#-------------------------------------------------------------
puts "Creating Yoga event"
event_yoga = Event.new({
  title: "Yoga",
  description: "Il est 16H déjà, tu viens de recevoir un message de la prof de yoga, qui annonce que son cours commence dans 15 Min. Que fais-tu?",
  image_url: nil,
  })

event_yoga.save

puts " Choice 1 Yoga"
 event_yoga_choice_1 = Choice.new({
  title: "Je vais au Yoga",
  description: "cool",
  score_impact: 0,
  stress_impact: 0,
})

 event_yoga_choice_1.event = event_yoga
 event_yoga_choice_1.save

puts " Choice 2 Yoga"
event_yoga_choice_2 = Choice.new({
  title:"Je continue de travailler",
  description:" Pas cool" ,
  score_impact:  20,
  stress_impact: 10 ,
})
event_yoga_choice_2.event = event_yoga
event_yoga_choice_2.save

# puts " Creating games event"
# game_event_1 = GameEvent.new(game_id: game_1, event_id: event_yoga)
# game_event_1.save
