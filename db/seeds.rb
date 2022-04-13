
puts "🗑️  Deleting previous data..."

User.destroy_all
Category.destroy_all
# Service.destroy_all
Watchable.destroy_all

puts '👤  Creating Users...'
u01 = User.create(username: 'Chun', email: 'chun@chun.codes', password: '1234', password_confirmation: '1234')
u02 = User.create(username: 'PONCHO', email: 'poncho@chunyi.dev', password: '1234', password_confirmation: '1234')

puts '🏷️  Creating Categories...'
c01 = Category.create(name: 'Action')
c02 = Category.create(name: 'Adventure')
c03 = Category.create(name: 'Animation')
c04 = Category.create(name: 'Comedy')
c05 = Category.create(name: 'Documentary')
c06 = Category.create(name: 'Drama')
c07 = Category.create(name: 'Fantasy')
c08 = Category.create(name: 'Horror')
c09 = Category.create(name: 'Rom-Com')
c10 = Category.create(name: 'Science Fiction')
c11 = Category.create(name: 'Series')
c12 = Category.create(name: 'Sports')
c13 = Category.create(name: 'Thriller')

# puts "📺  Creating Services..."
# s1 = Service.create(name: 'Netflix', service_type: 'Streaming', subscribed: true)
# s2 = Service.create(name: 'Amazon Prime Video', service_type: 'Streaming', subscribed: true)
# s3 = Service.create(name: 'Hulu', service_type: 'Streaming', subscribed: true)
# s4 = Service.create(name: 'Apple TV Plus', service_type: 'Streaming', subscribed: false)
# s5 = Service.create(name: 'HBO Max', service_type: 'Streaming', subscribed: false)
# s6 = Service.create(name: 'Disney Plus', service_type: 'Streaming', subscribed: true)
# s7 = Service.create(name: 'Paramount Plus', service_type: 'Streaming', subscribed: false)
# s8 = Service.create(name: 'Movie theaters', service_type: 'Eww, I gotta go outside?', subscribed: false)

puts '▶️ Creating Watchables...'
Watchable.create(title: "2022 NFL Draft", summary: "April 28-30.", rating: "G", favorite: false, streaming: true, poster_url: "https://m.psecn.photoshelter.com/img-get/I0000KTeAzeB1xVg/s/1000?1649817905", trailer_url: "", user_id: u01.id, category_id: c12.id)
Watchable.create(title: "Top Gun: Maverick", summary: "They killed off Goose!", rating: "PG-13", favorite: false, streaming: false, poster_url: "https://m.psecn.photoshelter.com/img-get/I0000XCkLVmMNBUk/s/1000?1649829723", trailer_url: "https://youtu.be/giXco2jaZ_4", user_id: u01.id, category_id: c01.id)
Watchable.create(title: "Top Gun", summary: "Original.", rating: "PG-13", favorite: false, streaming: false, poster_url: "https://m.psecn.photoshelter.com/img-get/I0000f6B.xsipnsk/s/1000?1649829720", trailer_url: "https://youtu.be/ArOMXELHiLw", user_id: u01.id, category_id: c01.id)
Watchable.create(title: "House of Gucci", summary: "Revenge and murder.", rating: "R", favorite: false, streaming: true, poster_url: "https://m.psecn.photoshelter.com/img-get/I0000tTfpO83MQAU/s/1000?1649829720", trailer_url: "https://youtu.be/pGi3Bgn7U5U", user_id: u01.id, category_id: c06.id)
Watchable.create(title: "All of Us Are Dead", summary: "Zombies.", rating: "TV-MA", favorite: false, streaming: true, poster_url: "https://m.psecn.photoshelter.com/img-get/I0000h9o4KTSgGkc/s/1000?1649829721", trailer_url: "https://youtu.be/pGi3Bgn7U5U", user_id: u01.id, category_id: c08.id)

puts "✅ Done seeding!"
