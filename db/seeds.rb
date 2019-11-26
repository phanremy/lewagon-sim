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
  score_impact: 10,
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

#-------------------------------------------------------------
puts "Creating Embuscade event"
event_embuscade = Event.new({
  title: "Embuscade",
  description: "Embuscade! on te propose d'aller prendre une biere",
  image_url: nil,
  })

event_embuscade.save

puts " Choice 1 Embuscade"
 event_embuscade_choice_1 = Choice.new({
  title: "J'accepte",
  description: "pas cool",
  score_impact: 10,
  stress_impact: 20,
})

 event_embuscade_choice_1.event = event_embuscade
 event_embuscade_choice_1.save

puts " Choice 2 Embuscade"
event_embuscade_choice_2 = Choice.new({
  title:"Je rentre faire mes flashcards",
  description:"cool" ,
  score_impact:  20,
  stress_impact: 00 ,
})
event_embuscade_choice_2.event = event_embuscade
event_embuscade_choice_2.save

#-------------------------------------------------------------
puts "Creating Push-Master event"
event_push_master = Event.new({
  title: "Git Push Origin Master",
  description: "T’as git push origin master par erreur 3 jours avant le démo day, et t’étais pas à jour, t’as fais disparaitre une bonne partie du taf d’un de tes buddies",
  image_url: nil,
  })

event_push_master.save

puts " Choice 1 Push-Master"
 event_push_master_choice_1 = Choice.new({
  title: "Tu joues la mauvaise foi.. Non non j’étais sur une branche, je vous assure..",
  description: "T’es un crétin, ça leur a pris trois seconde pour vérifier tes dires sur GitHub et tu t’es fais griller.. stress ++, malus sur les prochaines questions, tes buddies on les nerfs",
  score_impact: 0,
  stress_impact: 50,
})

 event_push_master_choice_1.event = event_push_master
 event_push_master_choice_1.save

puts " Choice 2 Push-Master"
event_push_master_choice_2 = Choice.new({
  title:"Tu tentes un ctrl-Z de derrière les fagots sur la page stt du crime ouverte devant toi sur le pc de ton buddy.",
  description:"Maxi coup de chatte, le code disparu réapparait à l’écran ! Tout le monde s’accorde pour dire qu’on a frôlé la catastrophe mais qu’on s’est bien marré au final.. stress +, bonus pour les prochaines questions : You are on FIRE !" ,
  score_impact:  50,
  stress_impact: 00 ,
})
event_push_master_choice_2.event = event_push_master
event_push_master_choice_2.save

#-------------------------------------------------------------
puts "Creating Flemme Cours event"
event_flemme = Event.new({
  title: "Flemme de noter en cours",
  description: "T’as trop trainé hier soir et t’as une flemme monumentale ce matin, t’as vraiment aucune envie de prendre des notes..",
  image_url: nil,
  })

event_flemme.save

puts " Choice 1 Flemme Cours"
 event_flemme_choice_1 = Choice.new({
  title: "Tu te forces à prendre des notes, ça me servira plus tard sans aucun doute.",
  description: "T’as fourni un effort relatif (mais important dans ton état) et au final t’as copié la moitié de travers, faut que tu retournes dans les slides pour aller trouver les infos que tu cherches. Stress + t’es deg",
  score_impact: 10,
  stress_impact: 20,
})

 event_flemme_choice_1.event = event_flemme
 event_flemme_choice_1.save

puts " Choice 2 Flemme Cours"
event_flemme_choice_2 = Choice.new({
  title:"La flemme l’emporte et tu décides de suivre nonchalamment le cours.",
  description:"Pari gagnant ! Toutes les infos dont tu as besoin sont dans les slides et sources du cours. Stress -, malus tu prends des mauvaises habitudes ??",
  score_impact:  20,
  stress_impact: 00 ,
})
event_flemme_choice_2.event = event_flemme
event_flemme_choice_2.save

#-------------------------------------------------------------
puts "Creating Scaffold event"
event_scaffold = Event.new({
  title: "Scaffold!",
  description: "On nous a appris le scaffold, pour eviter de faire ces methodes interminables et repetitives..  Par contre, interdit d'utiliser cette technique, mis a part le prof!"
  image_url: nil,
  })

event_scaffold.save

puts " Choice 1 Scaffold"
 event_scaffold_choice_1 = Choice.new({
  title: "M'en fiche j'utilise quand meme",
  description: "Cool, pas de stress, tu prends meme le ptit dej avec le prof",
  score_impact: 20,
  stress_impact: 0,
})

 event_scaffold_choice_1.event = event_scaffold
 event_scaffold_choice_1.save

puts " Choice 2 Scaffold"
event_scaffold_choice_2 = Choice.new({
  title:"Je respecte l'instruction du prof",
  description:"Ca fait rien, mais t'es un champion quand meme",
  score_impact:  0,
  stress_impact: 0 ,
})
event_scaffold_choice_2.event = event_scaffold
event_scaffold_choice_2.save

# puts " Creating games event"
# game_event_1 = GameEvent.new(game_id: game_1, event_id: event_yoga)
# game_event_1.save
