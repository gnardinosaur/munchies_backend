# 10.times do
#   User.create(username: Faker::Hipster.word, password: Faker::Hipster.word)
# end

# 10.times do
#   Order.create(items: Faker::Coffee.notes, total: rand(1...142), user_id: rand(1..10))    
# end


names = ["lobster", "banana", "cucumber", "steak", "chicken", "trout", "rice", "beans", "orange", "coffee"]

prices = [12, 0.19, 0.47, 13.99, 7, 14.99, 2.99, 0.99, 0.59, 11]

img_urls = [
  "https://bit.ly/36dQMao", 
  "https://bit.ly/2Qa5mtU", 
  "https://bit.ly/36h6j9m",
  "https://bit.ly/36cVe9t",
  "https://bit.ly/2QG0BYe",
  "https://bit.ly/2SCRutT",
  "https://bit.ly/2Qf3SPc",
  "https://bit.ly/36h6zVS",
  "https://bit.ly/2sDVjnM",
  "https://bit.ly/2MKivrm"
]

i = 0
  
while i < 10
  Item.create(name: names[i], price: prices[i], img_url: img_urls[i])
  # puts new_item.img_url
  i += 1
end
