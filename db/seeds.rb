Property.destroy_all

5.times do
  address = (Faker::Address.street_address + ", " +
    Faker::Address.secondary_address + ", " +
    Faker::Address.city + ", " +
    Faker::Address.country_code).truncate(140)

  Property.create!(type: ['house', 'department'].sample,
    title: "Propiedad muestra",
    address: address,
    zipcode: rand(10000..99999),
    country: ['mx', 'us', 'ca'].sample,
    notes: Faker::Lorem.paragraph.truncate(300))
end
