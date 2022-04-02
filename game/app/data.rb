story = Dialog.new([
  Message.new("We shalt anon proceed to the exchange of the rings, the sacred tokens of thy union", :priest, :neutral),
  Message.new("Anon, the exchange of consents under the welcoming gazeth of God almighty", :priest, :neutral),
  Message.new("Doth thee wisheth to taketh each other for spouse?", :priest, :neutral),
  Message.new("I do. I pledge to always cherish him.", :sister, :happy, {"crowd": -5, "grooms": -5}, 0.8),
  Message.new("And I do too. I shall spend the rest of my life at her side.", :groom, :happy, {"crowd":-5, "grooms": -5}, 0.8),
  Message.new("Shouldst anyone presenteth knoweth of any reasoneth yond this couple shouldst not beest did join in holy matrimony, speaketh anon or forever holdeth thy peace", :priest, :neutral),
  Message.new("...Good now, then in nameth of the Father, and of the Son, and of the Holy Spirit...", :priest, :neutral ),
  Message.new("I anon pronounce yond thou art husband and jointress. Those whom God hath did join together, alloweth nay one putteth asunder", :priest, :happy, {"crowd": -2, "grooms": -5, :priest: -10 })
])

dialogs = [
  # Dialogue d'Interruption "Il manque quelqu'un"
  Dialog.new([
    Message.new("Wait! Someone is missing!", :player, :panic, {}, 1, 1),
    Message.new("Oh my god! Are you sure?", :sister, :panic, {}, 1.2, 1),
    ChoiceList.new([
      Choice.new("Uncle Ernest (lie)", 3),
      Choice.new("Our late father", 7, :tense),
      Choice.new("Aprils fool!", , :happy),
      Choice.new("", )
    ]),
    # Branche oncle (index: 3)
    Message.new("Yes! Uncle Ernest,  he's not there!", :player, :panic, {}, 1, 1),
    Message.new("But... No, wait, I'm right here!", :crowd, :neutral, {"crowd": 2}, 0.8, 2),
    Message.new("Oh, hi uncle! I didn't see you there!", :player, :sweat, {}, 1.2, 1),
    Message.new("Please, little brother, don't disturb the ceremony for nothing...", :sister, :tense, {"grooms": 2}, 1.2, 1, -1),
    # Branche pere (index: 7)
    Message.new("Yes. Our late father. I propose we observe a minute of silence in the memory of a man who couldn't attend his daughter's wedding.", :player, :tense, {}, 0.8, 2),
    Message.new("...", :crowd, :neutral, {"crowd": 5}, 0.5, 2, -1),
    # Branche poisson d'avril (index: )
    # Branche silence (index: )
  ])
]
