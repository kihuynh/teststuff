Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(
    name: Faker::Book.unique.title,
    cost: rand(0..10000),
    origin: Faker::StarWars.planet
  )
  5.times do |index|
    product.reviews.create(
      author: Faker::Name.unique.name,
      content_body: Faker::Lorem.sentences(4).join(" "),
      rating: rand(0..5)
    )
  end
end

p "created #{Product.count} products"
p "created #{Review.count} reviews"
