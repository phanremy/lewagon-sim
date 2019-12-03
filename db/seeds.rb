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
  description: "This is your first day at Le Wagon, you’re excited to start! You just met 30 new buddies but you have to install all the files needed for the setup..." ,
  image_url: "gameevents/event_first_day.png",
  })
first_day.save

puts "Creating first day choices"
 first_day_choice_1 = Choice.new({
  title: "Discuss with schoolmates 👫" ,
  description: "Good choice, you’ll spend 9 weeks with them, it’s important to know your next buddies.",
  score_impact: 450 ,
  stress_impact: 0,
  image_url: "gameevents/event_first_day_choice1.png",
})

first_day_choice_2 = Choice.new({
  title: "follow the set-up instructions 👨‍💻",
  description:"Well… You must install Linux, witch takes a lot of time, and a lot of bug appears. All the teachers have to help you. You’re a bit embarrassed." ,
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
  description: "In the middle of the afternoon, you receive a message for the Yoga class, starting in 15 minutes...",
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
  description: "You rush into your code. This hour of working is tiring and useless. You learned nothing. You are just more stressed." ,
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
  description: " You have to work a whole week to make a copycat of Airbnb. You can choose any subject you want ! So, Manors or Socks?",
  image_url: "gameevents/event_airbnb.jpg",
  })
airbnb.save

puts "Creating Air-Bnb choices"
 airbnb_choice_1 = Choice.new({
  title: "Manors 🏰" ,
  description: "Pff... Boring !!!",
  score_impact: 175,
  stress_impact: 10,
  image_url: "gameevents/event_airbnb_choice1.png",
})

airbnb_choice_2 = Choice.new({
  title: "Socks 🧦",
  description:"Yes ! You have the good spirit. No need to be serious for the moment. Enjoy pictures of socks in your laptop!" ,
  score_impact: 560,
  stress_impact: 0,
  image_url: "gameevents/event_airbnb_choice2.png",
})

 airbnb_choice_1.event = airbnb
 airbnb_choice_2.event = airbnb
 airbnb_choice_1.save
 airbnb_choice_2.save
puts "done"



puts "Creating push origin master event"
event_push_master = Event.new({
  title: "Git Push Origin Master",
  description: "You just pushed origin master and you weren’t up to date. You just crushed most of one of your buddies work..",
  image_url: "gameevents/event_push_master.png",
  })

event_push_master.save

puts "Creating Push Master Choices "
 event_push_master_choice_1 = Choice.new({
  title: "Play the bad faith card.. « No no, I was on a branch, I swear… 🙅‍♂️",
  description: "Dummy ! They took less than 3 seconds to verify who made the push and you got busted..",
  score_impact: 50,
  stress_impact: 50,
  image_url: "gameevents/event_push_master_choice1.png"
})

 event_push_master_choice_1.event = event_push_master
 event_push_master_choice_1.save

event_push_master_choice_2 = Choice.new({
  title: "Try a CTRL-Z from outer-space on your buddy’s laptop 👨‍💻",
  description: "You lucky bastard, every lost lines just reappear on the screen! That was really a close one!!" ,
  score_impact:  650,
  stress_impact: 15 ,
  image_url: "gameevents/event_push_master_choice2.png"
})
event_push_master_choice_2.event = event_push_master
event_push_master_choice_2.save

puts "done"

puts "Creating After work event"
event_after_work = Event.new({
  title: "After work",
  description: "You’re wasted and all you want to do is go back home to rest.. Of course somebody asks you if want to drink a beer to relax after this long day.",
  image_url: "gameevents/event_after_work.png",
  })

event_after_work.save

puts "Creating After Work Choices"
 event_after_work_choice_1 = Choice.new({
  title: "I'm going home !🚶‍♀️",
  description: "Good choice, you’ll have time to do your flash cards and sleep well, because you obviously need it.",
  score_impact: 150,
  stress_impact: 0,
  image_url: "gameevents/event_after_work_choice1.png",
})

 event_after_work_choice_1.event = event_after_work
 event_after_work_choice_1.save

event_after_work_choice_2 = Choice.new({
  title: "One beer never hurt anybody 🍻",
  description: "Damn, a beer never hurt anyone, but what about 10 ? Well, you know it’s painful because this hangover is gonna follow you all day. Was it worth it? You tell us!" ,
  score_impact:  350,
  stress_impact: 25,
  image_url: "gameevents/event_after_work_choice2.jpg",
})
event_after_work_choice_2.event = event_after_work
event_after_work_choice_2.save

puts "done"

# #-------------------------------------------------------------
# puts "Creating Embuscade event"
# event_embuscade = Event.new({
#   title: "Embuscade",
#   description: "Embuscade! on te propose d'aller prendre une biere",
#   image_url: nil,
#   })

# event_embuscade.save

# puts " Choice 1 Embuscade"
#  event_embuscade_choice_1 = Choice.new({
#   title: "J'accepte",
#   description: "pas cool",
#   score_impact: 10,
#   stress_impact: 20,
# })

#  event_embuscade_choice_1.event = event_embuscade
#  event_embuscade_choice_1.save

# puts " Choice 2 Embuscade"
# event_embuscade_choice_2 = Choice.new({
#   title:"Je rentre faire mes flashcards",
#   description:"cool" ,
#   score_impact:  20,
#   stress_impact: 00 ,
# })
# event_embuscade_choice_2.event = event_embuscade
# event_embuscade_choice_2.save

# #-------------------------------------------------------------
# puts "Creating Push-Master event"
# event_push_master = Event.new({
#   title: "Git Push Origin Master",
#   description: "T’as git push origin master par erreur 3 jours avant le démo day, et t’étais pas à jour, t’as fais disparaitre une bonne partie du taf d’un de tes buddies",
#   image_url: nil,
#   })

# event_push_master.save

# puts " Choice 1 Push-Master"
#  event_push_master_choice_1 = Choice.new({
#   title: "Tu joues la mauvaise foi.. Non non j’étais sur une branche, je vous assure..",
#   description: "T’es un crétin, ça leur a pris trois seconde pour vérifier tes dires sur GitHub et tu t’es fais griller.. stress ++, malus sur les prochaines questions, tes buddies on les nerfs",
#   score_impact: 0,
#   stress_impact: 50,
# })

#  event_push_master_choice_1.event = event_push_master
#  event_push_master_choice_1.save

# puts " Choice 2 Push-Master"
# event_push_master_choice_2 = Choice.new({
#   title:"Tu tentes un ctrl-Z de derrière les fagots sur la page stt du crime ouverte devant toi sur le pc de ton buddy.",
#   description:"Maxi coup de chatte, le code disparu réapparait à l’écran ! Tout le monde s’accorde pour dire qu’on a frôlé la catastrophe mais qu’on s’est bien marré au final.. stress +, bonus pour les prochaines questions : You are on FIRE !" ,
#   score_impact:  50,
#   stress_impact: 00 ,
# })
# event_push_master_choice_2.event = event_push_master
# event_push_master_choice_2.save

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
