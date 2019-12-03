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
john = User.new( first_name: "John", last_name: "Lennon", email: "johnlennon@lewagon.org", password:"123456")
john.save

puts "Seeding User Germain"
germain = User.new( first_name: "Germain", last_name: "Loret", batch: 70, email: "germainloret@lewagon.org", password:"123456")
germain.save

puts " Creating a party with best score"
best_game = Game.new( score: 42420 )
best_game.user = germain
best_game.save

puts "Seeding User Germain"
remy = User.new( first_name: "Remy", last_name: "Phan", batch: 321, email: "phan.remy@gmail.com", password:"123456")
remy.save

puts " Creating a party with best score"
remy_game = Game.new( score: 4440 )
remy_game.user = remy
remy_game.save

#-------------------------------------------------------------
puts "Creating first day event"
first_day = Event.new({
  title: "First Day",
  description: " This is the first day at 'Le Wagon', you just met 30 new buddies and you have to install all the files needed. Where do you spend most time?" ,
  image_url: "gameevents/event_first_day.png",

  })
first_day.save

puts "Creating first day choices"
 first_day_choice_1 = Choice.new({
  title: "With schoolmates 👫" ,
  description: "Good choice, you’ll spend 9 weeks with them.",
  score_impact: 450 ,
  stress_impact: 0,
  image_url: "gameevents/event_first_day_choice1.png",
})

first_day_choice_2 = Choice.new({
  title: "follow the instructions 👨‍💻",
  description:"Well… You must install Linux, witch takes a lot of time, and a lot of bug appears. All the teachers have to help you...",
  score_impact: 120,
  stress_impact: 20,
  image_url: "gameevents/event_first_day_choice2.png",
})

 first_day_choice_1.event = first_day
 first_day_choice_2.event = first_day
 first_day_choice_1.save
 first_day_choice_2.save
puts "done"

puts "Creating Yoga event"
event_yoga = Event.new({
  title: "Yoga",
  description: "It's 5pm, you received a message for the Yoga class, starting in 15 minutes...",
  image_url: "gameevents/event_yoga.png",
  })

event_yoga.save

puts "Choices Yoga"
 event_yoga_choice_1 = Choice.new({
  title: "Time to Yoga! 🧘‍♀️",
  description: " It was very effective! You didn't finish your day-work, but you are way more efficient the next day.",
  score_impact: 320,
  stress_impact: 5,
  image_url: "gameevents/event_yoga_choice1.png",
})

 event_yoga_choice_1.event = event_yoga
 event_yoga_choice_1.save

event_yoga_choice_2 = Choice.new({
  title: "Keep working 👨‍💻",

  description: " You are too much tired,this hour of working is useless, you learned nothing." ,
  score_impact:  10,
  stress_impact: 30,
  image_url: "gameevents/event_yoga_choice2.png",
})
event_yoga_choice_2.event = event_yoga
event_yoga_choice_2.save

puts "done"

puts "Creating Air-BnB event"
airbnb = Event.new({
  title: "Airbnb Project",
  description: " You have to make a site like AirBnb for a whole week with teammates. Wich things do you want to rent?",
  image_url: "gameevents/event_airbnb.jpg",
  })
airbnb.save

puts "Creating Air-Bnb choices"
 airbnb_choice_1 = Choice.new({
  title: "Manors 🏰" ,
  description: "Pff... This is so  boring !!! Be a 'creative people'.",
  score_impact: 175,
  stress_impact: 10,
  image_url: "gameevents/event_airbnb_choice1.png",
})

airbnb_choice_2 = Choice.new({
  title: "Socks 🧦",
  description:"Yes ! You have the good spirit. No need to be serious for the moment!" ,
  score_impact: 560,
  stress_impact: 0,
  image_url: "gameevents/event_airbnb_choice2.png",
})

 airbnb_choice_1.event = airbnb
 airbnb_choice_2.event = airbnb
 airbnb_choice_1.save
 airbnb_choice_2.save
puts "done"



puts "Creating After work event"
event_after_work = Event.new({
  title: "After work!",
  description: "It's the end of long working day... A buddy ask you to drink a beer. What do you do?",
  image_url: "gameevents/event_after_work.png",
  })

event_after_work.save

puts "Choices After Work"
 event_after_work_choice_1 = Choice.new({
  title: "I'm going home !🚶‍♀️",
  description: "Good choice, you’ll have time to do your flash cards and sleep well, because obviously you need it.",
  score_impact: 150,
  stress_impact: 0,
  image_url: "gameevents/event_after_work_choice1.png",
})

 event_after_work_choice_1.event = event_after_work
 event_after_work_choice_1.save

event_after_work_choice_2 = Choice.new({
  title: "BEER🍻",
  description: "BIGGEST Hangover of your life! Don't trust your friends...." ,
  score_impact:  350,
  stress_impact: 25,
  image_url: "gameevents/event_after_work_choice2.jpg",
})
event_after_work_choice_2.event = event_after_work
event_after_work_choice_2.save

puts "done"


puts "Creating 404 event"

event_404 = Event.new({
  title: "Page not found!",
  description: "1 day before the demo-day, you have a 404 error for you main page, no clue where's the problem..",
  image_url: "heart-icon.png",
  })

event_404.save

puts "Choices 404 event"
 event_404_choice_1 = Choice.new({
  title: "Cry 😭",
  description: " A teacher saw you, and find the solution in 5 minutes. No big deal.",
  score_impact: 321,
  stress_impact: 0,
  image_url: "heart-icon.png",
})

 event_404_choice_1.event = event_404
 event_404_choice_1.save

event_404_choice_2 = Choice.new({
  title: "search for a solution 💡",
  description: " Don't be so obstinate. you lost your day finding a solution." ,
  score_impact:  220,
  stress_impact: 20,
  image_url: "heart-icon.png",
})

event_404_choice_2.event = event_404
event_404_choice_2.save

puts "done"

puts "Creating Choose you batch Event"
event_choose_batch = Event.new({
  title: "Batch",
  description: "Wich batch you are ?",
  image_url: "heart-icon.png",
  })

event_choose_batch.save

puts "Choices Choose you batch"
 event_choose_batch_choice_1 = Choice.new({
  title: "Le Perchoir",
  description: "there isn't any best choice ✌️",
  score_impact: 321,
  stress_impact: 0,
  image_url: "heart-icon.png",
})

 event_choose_batch_choice_1.event = event_choose_batch
 event_choose_batch_choice_1.save

event_choose_batch_choice_2 = Choice.new({
  title: "Villa Gaudelet",
  description: "there isn't any best choice ✌️" ,
  score_impact:  320,
  stress_impact: 0,
  image_url: "heart-icon.png",
})
event_choose_batch_choice_2.event = event_choose_batch
event_choose_batch_choice_2.save

puts "done"


# #-------------------------------------------------------------
# puts "Creating Flemme Cours event"
# event_flemme = Event.new({
#   title: "Flemme de noter en cours",
#   description: "T’as trop trainé hier soir et t’as une flemme monumentale ce matin, t’as vraiment aucune envie de prendre des notes..",
#   image_url: nil,
#   })

# event_flemme.save

# puts " Choice 1 Flemme Cours"
#  event_flemme_choice_1 = Choice.new({
#   title: "Tu te forces à prendre des notes, ça me servira plus tard sans aucun doute.",
#   description: "T’as fourni un effort relatif (mais important dans ton état) et au final t’as copié la moitié de travers, faut que tu retournes dans les slides pour aller trouver les infos que tu cherches. Stress + t’es deg",
#   score_impact: 10,
#   stress_impact: 20,
# })

#  event_flemme_choice_1.event = event_flemme
#  event_flemme_choice_1.save

# puts " Choice 2 Flemme Cours"
# event_flemme_choice_2 = Choice.new({
#   title:"La flemme l’emporte et tu décides de suivre nonchalamment le cours.",
#   description:"Pari gagnant ! Toutes les infos dont tu as besoin sont dans les slides et sources du cours. Stress -, malus tu prends des mauvaises habitudes ??",
#   score_impact:  20,
#   stress_impact: 00 ,
# })
# event_flemme_choice_2.event = event_flemme
# event_flemme_choice_2.save

# #-------------------------------------------------------------
# puts "Creating Scaffold event"
# event_scaffold = Event.new({
#   title: "Scaffold!",
#   description: "On nous a appris le scaffold, pour eviter de faire ces methodes interminables et repetitives..  Par contre, interdit d'utiliser cette technique, mis a part le prof!",
#   image_url: nil,
#   })

# event_scaffold.save

# puts " Choice 1 Scaffold"
#  event_scaffold_choice_1 = Choice.new({
#   title: "M'en fiche j'utilise quand meme",
#   description: "Cool, pas de stress, tu prends meme le ptit dej avec le prof",
#   score_impact: 20,
#   stress_impact: 0,
# })

#  event_scaffold_choice_1.event = event_scaffold
#  event_scaffold_choice_1.save

# puts " Choice 2 Scaffold"
# event_scaffold_choice_2 = Choice.new({
#   title:"Je respecte l'instruction du prof",
#   description:"Ca fait rien, mais t'es un champion quand meme",
#   score_impact:  0,
#   stress_impact: 0 ,
# })
# event_scaffold_choice_2.event = event_scaffold
# event_scaffold_choice_2.save
