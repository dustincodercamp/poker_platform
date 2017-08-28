User.delete_all

User.create!([
  {email: "dustin@gmail.com", password: "123456", first_name: "Dustin", last_name: "Cotcamp", admin: true}
])

Lesson.delete_all

Lesson.create!([
  {title: "Poker Basics", order: 1, id: 1},
  {title: "Understanding Further", order: 2, id: 2},
  {title: "Advanced", order: 3, id: 3}
])
# Category.create!([
#   {lesson_id: 2, name: "Entering the pot", description: "Understanding the types of starting hands you receive.", order: nil},
#   {lesson_id: 2, name: "Post-Flop Hand Evaluation", description: "Categorizing strength of your hand.", order: nil},
#   {lesson_id: 3, name: "Playing Position", description: "Understanding when to play certain hands because of your position at the table.", order: nil},
#   {lesson_id: 2, name: "Purposes of Betting", description: "Deciding when and why to make a bet.", order: nil},
#   {lesson_id: 3, name: "Bet Sizing", description: "Understanding bet sizes in relation to board texture.", order: nil},
#   {lesson_id: 3, name: "Calculating outs", description: "Knowing the cards that will help strengthen your hand. ", order: nil},
#   {lesson_id: 3, name: "Reading Opponents", description: "Picking up on opponents tendencies.", order: nil},
#   {lesson_id: 1, name: "How To Play", description: "The basics about the most popular poker game, Texas Hold'em.", order: 1},
#   {lesson_id: 1, name: "Hand Rankings", description: "Knowing which hands beat which.", order: 2},
#   {lesson_id: 1, name: "Player Positions", description: "Understanding the flow of the game.", order: 3},
#   {lesson_id: 1, name: "Betting Rounds", description: "Information about betting structure.", order: 4},
#   {lesson_id: 2, name: "Starting Hands", description: "Knowing which hands to play before the flop.", order: 5}
# ])

Exercise.delete_all

Exercise.create!([
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true},
  {name: "Not yey", live: true}
])
