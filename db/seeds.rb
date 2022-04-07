
puts "🗑️  Deleting previous data..."

User.destroy_all
Category.destroy_all
# Service.destroy_all
Watchable.destroy_all

puts '👤  Creating Users...'
u01 = User.create(username: 'Chun', email: 'chun@chun.codes', password: '1234', password_confirmation: '1234')
u02 = User.create(username: 'C', email: 'chun@chunyi.dev', password: '1234', password_confirmation: '1234')
u03 = User.create(username: 'Bo', email: 'bo@chunyi.dev', password: '1234', password_confirmation: '1234')
u04 = User.create(username: 'Poncho', email: 'poncho@chunyi.dev', password: '1234', password_confirmation: '1234')

puts '🏷️  Creating Categories...'
c1 = Category.create(name: 'Action')
c2 = Category.create(name: 'Adventure')
c3 = Category.create(name: 'Comedy')
c4 = Category.create(name: 'Drama')
c5 = Category.create(name: 'Fantasy')
c6 = Category.create(name: 'Horror')
c7 = Category.create(name: 'Documentary')
c8 = Category.create(name: 'Science Fiction')
c9 = Category.create(name: 'Series')

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
Watchable.create(title: "Top Gun: Maverick", summary: "After more than thirty years of service as one of the Navy's top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.", rating: "PG-13", favorite: false, streaming: false, poster_url: "https://m.media-amazon.com/images/M/MV5BMmIwZDMyYWUtNTU0ZS00ODJhLTg2ZmEtMTk5ZmYzODcxODYxXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg", trailer_url: "https://youtu.be/giXco2jaZ_4", user_id: u01.id, category_id: c1.id)
Watchable.create(title: "House of Gucci", summary: "When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition begins to unravel their legacy and triggers a reckless spiral of betrayal, decadence, revenge, and ultimately...murder.", rating: "R", favorite: false, streaming: true, poster_url: "https://m.media-amazon.com/images/M/MV5BYzdlMTMyZWQtZWNmMC00MTJiLWIyMWMtM2ZlZDdlYzZhNTc0XkEyXkFqcGdeQXVyMTMzNDE5NDM2._V1_FMjpg_UX1080_.jpg", trailer_url: "https://youtu.be/pGi3Bgn7U5U", user_id: u02.id, category_id: c4.id)
Watchable.create(title: "All of Us Are Dead", summary: "A high school becomes ground zero for a zombie virus outbreak. Trapped students must fight their way out or turn into one of the rabid infected.", rating: "TV-MA", favorite: false, streaming: true, poster_url: "https://m.media-amazon.com/images/M/MV5BOTY1ZGM2YzQtMTBjZC00NjE2LWJlNzUtYjA0YjYxNzBjMmRjXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg", trailer_url: "https://youtu.be/pGi3Bgn7U5U", user_id: u01.id, category_id: c1.id)

puts "✅ Done seeding!"
