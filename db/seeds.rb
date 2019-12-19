10.times do
    User.create(username: Faker::Hipster.word, password: Faker::Hipster.word)
end

10.times do
    Order.create(items: Faker::Coffee.notes, total: rand(1...142), user_id: rand(1..10))    
end

