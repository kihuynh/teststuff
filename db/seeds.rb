Product.destroy_all

50.times do |index|
  Product.create!(
    name: Faker::Food.dish,
    cost: Faker::Commerce.price,
    origin: Faker::Address.country
    )
end
