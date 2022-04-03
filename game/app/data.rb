$story = Dialog.new([
  Message.new("We shalt anon proceed to the exchange of the rings, the sacred tokens of thy union", :priest, :neutral),
  Message.new("Anon, the exchange of consents under the welcoming gazeth of God almighty", :priest, :neutral),
  Message.new("Doth thee wisheth to taketh each other for spouse?", :priest, :neutral),
  Message.new("I do. I pledge to always cherish him.", :sister, :happy, {crowd: -5, grooms: -5}, 0.8),
  Message.new("And I do too. I shall spend the rest of my life at her side.", :groom, :happy, {crowd:-5, grooms: -5}, 0.8),
  Message.new("Shouldst anyone presenteth knoweth of any reasoneth yond this couple shouldst not beest did join in holy matrimony, speaketh anon or forever holdeth thy peace", :priest, :neutral),
  Message.new("...Good now, then in nameth of the Father, and of the Son, and of the Holy Spirit...", :priest, :neutral ),
  Message.new("I anon pronounce yond thou art husband and jointress. Those whom God hath did join together, alloweth nay one putteth asunder", :priest, :happy, {crowd: -2, grooms: -5, :priest: -10 })
])

$notifications = [
  Notification.new("We're looking for an open store, hang in there!", 2),
  Notification.new("Damn evrything is closed!! :(", 10),
  Notification.new("Low battery (2%), plug in your phone", 15, :panic),
  Notification.new("Atlast, an open shop! We're looking for a parking spot", 20),
  Notification.new("Gosh, there's a crazy line! You doing fine over there?", 30),
  Notification.new("Low battery (1%), plug in your phone", 35, :panic),
  Notification.new("OK, we're out with the goods! Coming ASAP!", 40),
  Notification.new("TRAFFIC JAM -_____-", 45),
  Notification.new("Almost there, give us a few more minutes!!!", 55),
  Notification.new("VERY LOW BATTERY (0%), PLUG IN YOUR PHONE NOW!", 60, :tense),
]

$dialogs = [
  # Dialogue d'Interruption "Il manque quelqu'un"
  Dialog.new([
    Message.new("Wait! Someone is missing!", :player, :panic, {}, 1, 1),
    Message.new("Oh my god! Are you sure?", :sister, :panic, {}, 1.2, 1),
    ChoiceList.new([
      Choice.new("Uncle Ernest (lie)", 3),
      Choice.new("Our late father", 7, :tense),
      Choice.new("Aprils fool!", 9, :happy),
      Choice.new("", 12),
    ]),
    # Branche oncle (index: 3)
    Message.new("Yes! Uncle Ernest,  he's not there!", :player, :panic, {}, 1, 1),
    Message.new("But... hey, wait, I'm right here!", :crowd, :neutral, {crowd: 2}, 0.8, 2),
    Message.new("Oh, hi uncle! My bad, I didn't see you there!", :player, :sweat, {}, 1.2, 1),
    Message.new("Please, little brother, don't disturb the ceremony for nothing...", :sister, :tense, {grooms: 2}, 1.2, 1, -1),
    # Branche pere (index: 7)
    Message.new("Yes. Our late father. I propose we observe a minute of silence in the memory of a man who couldn't attend his daughter's wedding.", :player, :tense, {}, 0.8, 2),
    Message.new("...", :crowd, :neutral, {crowd: 5}, 0.5, 3, -1),
    # Branche poisson d'avril (index: 9)
    Message.new("April's fool! Hahaaaa, that was just a little joke.", :player, :sweat, {}, 1, 1),
    Message.new("Are you serious right now? April's fool? We're in July, you little...", :groom, :tense, {grooms: 5}, 1.2, 1),
    Message.new("You are God's house, young man, and I shall not tolerate such foolish behavior in this holy place!", :priest, :tense, {priest: 5}, 0.8, 1, -1)
    # Branche silence (index: 12)
    Message.new("Yes? What is it, dear? Who is missing?", :mother, :neutral, {crowd:2}, 0.8, 1),
    Message.new("Errr... I, I don't know...", :player, :neutral, {}, 1, 1),
    Message.new("...Now that this matter is settled, let us resume...", :priest, :neutral, {}, 0.8, 1),
  ]), # Fin d'interuption "Il manque quelqu'un"

  # Dialogue d'Interruption "Bague"
  Dialog.new([
    Message.new("Hey! Wait!! The rings! Are they rhodium-plated?", :player, :tense, {}, 1.5, 1),
    Message.new("Why would you ask?", :groom, :neutral, {}, 1.5, 1),
    ChoiceList.new([
      Choice.new("Isn't rhodium radioactive?", 3, :panic),
      Choice.new("It's unethical!", 7, :tense),
      Choice.new("The color doesn't suit the bride's dress", 10, :neutral),
      Choice.new("", 14),
    ]),
    # Branche radioactif (index: 3)
    Message.new("I read somewhere that it is radioactive! You should take it off at once!", :player, :panic, {grooms: 2}, 1, 1),
    Message.new("Really? Maybe we should...", :sister, :panic, {}, 0.8, 1)
    Message.new("Don't be ridiculous! Of course it's not, it's used on every wedding ring!", :groom, :tense, {grooms: 2}, 2, 1)
    Message.new("Now sit and don't disturb this wedding any more.", :groom, :neutral, {}, 1, 1, -1),
    # Branche pas ethique (index: 7)
    Message.new("Rhodium is a rare metal, which is extracted in inhuman conditions in south Mediotanzania...", :player, :neutral, {}, 1, 1),
    Message.new("Our father here would surely not allow such a symbol of human exploitation to be present in the house of God!", :player, :tense, {priest: 5}, 1, 2),
    Message.new("Come on, young man. Now is not the time to discuss this matter...", :priest, :tense, {}, 0.8, 1, -1),
    # Branche pas ethique (index: 10)
    Message.new("Sorry, sis, I can't keep it quiet any longer...", :player, :neutral, {}, 0.8, 1),
    Message.new("The color doesn't match your dress. It's outrageous ugly.", :player, :neutral, {crowd: 1, grooms: 5}, 1, 1,),
    Message.new("What did you say, you little prick?!", :sister, :tense, {}, 2, 1),
    Message.new("Clearly this one doens't have the slightest sense of taste. Don't listen to him, dear.", :groom, :neutral, {}, 1, 1, -1),
    # Branche silence (index: 14)
    Message.new("Brother? Hello? What's wrong with rhodium?", :sister, :neutral, {crowd: 1, grooms: 1}, 1, 1),
    Message.new("I... It's... nothing. Nothing's wrong.", :player, :neutral, {}, 1, 1),
    Message.new("There is no problem at all with the rings. Let us resume...", :priest, :neutral, {}, 0.8, 1),
  ]) # Fin d'interuption "Bague"
=begin
  # Dialogue "Parler latin"
  Dialog.new([
    Message.new("Excuse me, Father, aren't ceremonies supposed to be in Latin?" , :player, :neutral, {priest: 1}, 1, 1),
    Message.new("Why, my son, can you speak Latin?" , :priest, :neutral, {}, 0.8, 1),
    ChoiceList.new([
      Choice.new("I do", 3, :neutral),
      Choice.new("I don't", 7, :sweat),
      Choice.new("The real question is can YOU speak Latin?", 10, :tense),
      Choice.new("", 12),
    ]),
    # Branche improvise latin (index: 3)
    Message.new("In fact, I do speak Latin. Lorem ipsum dolor sit amet, consectetur adipiscing elit." , :player, :neutral, {}, 1, 2),
    Message.new("Young man,  what you just said makes absolutely no sense, I am afraid." , :priest, :neutral, {priest: 5}, 0.8, 1),
    Message.new("Oh... are you sure?" , :player, :panic, {}, 1, 1),
    Message.new("Indeed, I am." , :priest, :neutral, {}, 1, 0, -1),
    # Branche parle pas latin (index: 7)
    Message.new("Well, no, not exactly, but, for the sake of traditions..." , :player, :neutral, {}, 1, 1),
    Message.new("Hey, please! This ceremony is long enough without having to endure it in Latin!" , :crowd, :tense, {crowd:2}, 1, 2),
    Message.new("Endure?" , :sister, :neutral, {grooms:1}, 1, 0, -1),
    # Branche parle pas latin (index: 10)
    Message.new("What matters here is that you're not speaking in Latin, and it makes me wonder wether you're a real priest or an impostor! " , :player, :neutral, {}, 1, 1),
    
    
    

    Message.new("Anyway, please allow me to continue in English." , :priest, :neutral, {}, 1, -1),
=end

  ])

]
