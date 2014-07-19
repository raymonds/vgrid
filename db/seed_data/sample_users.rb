puts 'Started seeding Users ...'

(1..50).each {|index|
  User.create(name: "user_#{index}", notes: "user notes #{index}", doj: Time.now()+index.day,
              role_id: rand(3), active: (index.even? ? true : false))
}

puts '#### Finished ####'
