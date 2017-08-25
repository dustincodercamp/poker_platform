User.create!([
  {email: "amana_arthur@hotmail.com", encrypted_password: "$2a$11$rJQCbV2KeslgWMBkM/sVxe4QoOArN3sp.pD8JIIMNjONPWlGyyFKO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2017-08-25 17:51:41", last_sign_in_at: "2017-08-25 15:18:36", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", provider: "facebook", uid: "10155717319451908", facebook_picture_url: "https://graph.facebook.com/v2.6/10155717319451908/picture?type=square", first_name: "Amana", last_name: "Arthur", token: "EAAHCLBGsCjIBAN02PV5yjvCyQ8s8orA0gp6sH105kgYh181FIlNGN6EBZA0PMZCXj1AAFe9Tc2UCeZAmmsdIqeFIvldnU9DtwoI6AbHj7uijcaP5ePVvRH3KEUaxSkmHxI1BNKgxSeXgutwgsAYTiw5LDNzIVoZBkbilAqL9MQZDZD", token_expiry: "2017-10-24 12:33:55", admin: true}
])
Category.create!([
  {lesson_id: 7, name: "How to play", description: "Not yet", order: nil},
  {lesson_id: 7, name: "Hand Rankings", description: "Not yet", order: nil},
  {lesson_id: 7, name: "Player Positions", description: "Not yet", order: nil},
  {lesson_id: 8, name: "How to play", description: "Not yet", order: nil},
  {lesson_id: 8, name: "Hand Rankings", description: "Not yet", order: nil},
  {lesson_id: 8, name: "Player Positions", description: "Not yet", order: nil},
  {lesson_id: 9, name: "How to play", description: "Not yet", order: nil},
  {lesson_id: 9, name: "Hand Rankings", description: "Not yet", order: nil},
  {lesson_id: 9, name: "Player Positions", description: "Not yet", order: nil}
])
Exercise.create!([
  {category_id: 7, name: "Not yey", live: true},
  {category_id: 7, name: "Not yey", live: true},
  {category_id: 7, name: "Not yey", live: true},
  {category_id: 10, name: "Not yey", live: true},
  {category_id: 10, name: "Not yey", live: true},
  {category_id: 10, name: "Not yey", live: true},
  {category_id: 13, name: "Not yey", live: true},
  {category_id: 13, name: "Not yey", live: true},
  {category_id: 13, name: "Not yey", live: true}
])
Lesson.create!([
  {title: "Poker Basics", order: nil},
  {title: "Understanding further", order: nil},
  {title: "Advanced", order: nil}
])
