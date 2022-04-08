
puts "🗑️  Deleting previous data..."

User.destroy_all
Category.destroy_all
# Service.destroy_all
Watchable.destroy_all

puts '👤  Creating Users...'
u01 = User.create(username: 'Chun', email: 'chun@chun.codes', password: '123', password_confirmation: '123')
u02 = User.create(username: 'urbnmyr', email: 'urbnmyr@gmail.com', password: '123', password_confirmation: '123')
u03 = User.create(username: 'Bo', email: 'bo@chunyi.dev', password: '123', password_confirmation: '123')
u04 = User.create(username: 'Poncho', email: 'poncho@chunyi.dev', password: '123', password_confirmation: '123')

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
Watchable.create(title: "Top Gun: Maverick", summary: "After more than thirty years of service as one of the Navy's top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.", rating: "PG-13", favorite: false, streaming: false, poster_url: "https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg", trailer_url: "https://youtu.be/giXco2jaZ_4", user_id: u02.id, category_id: c01.id)
Watchable.create(title: "Top Gun", summary: "As students at the United States Navy's elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.", rating: "PG-13", favorite: false, streaming: false, poster_url: "https://m.media-amazon.com/images/M/MV5BZjQxYTA3ODItNzgxMy00N2Y2LWJlZGMtMTRlM2JkZjI1ZDhhXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_FMjpg_UX1035_.jpg", trailer_url: "https://youtu.be/ArOMXELHiLw", user_id: u02.id, category_id: c01.id)
Watchable.create(title: "House of Gucci", summary: "When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition begins to unravel their legacy and triggers a reckless spiral of betrayal, decadence, revenge, and ultimately...murder.", rating: "R", favorite: false, streaming: true, poster_url: "https://m.media-amazon.com/images/M/MV5BYzdlMTMyZWQtZWNmMC00MTJiLWIyMWMtM2ZlZDdlYzZhNTc0XkEyXkFqcGdeQXVyMTMzNDE5NDM2._V1_FMjpg_UX1080_.jpg", trailer_url: "https://youtu.be/pGi3Bgn7U5U", user_id: u01.id, category_id: c04.id)
Watchable.create(title: "All of Us Are Dead", summary: "A high school becomes ground zero for a zombie virus outbreak. Trapped students must fight their way out or turn into one of the rabid infected.", rating: "TV-MA", favorite: false, streaming: true, poster_url: "https://m.media-amazon.com/images/M/MV5BOTY1ZGM2YzQtMTBjZC00NjE2LWJlNzUtYjA0YjYxNzBjMmRjXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg", trailer_url: "https://youtu.be/pGi3Bgn7U5U", user_id: u01.id, category_id: c01.id)

puts "✅ Done seeding!"
