# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create(username: "chuck", password: "password")
# User.create(username: "tucker", password: "password")

# TvShow.create(name: "The Mandalorian", TMDB_ID: 82856, overview: "Set after the fall of the Empire and before the emergence of the First Order, we follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.", poster_path: "/BbNvKCuEF4SRzFXR16aK6ISFtR.jpg", vote_average: 7.6, vote_count: 124, genre_ids: [10759, 10765], first_air_date: "2019-11-12")

# TvShow.create(name: "Rick and Morty", TMDB_ID: 60625, overview: "Rick is a mentally-unbalanced but scientifically-gifted old man who has recently reconnected with his family. He spends most of his time involving his young grandson Morty in dangerous, outlandish adventures throughout space and alternate universes. Compounded with Morty's already unstable family life, these events cause Morty much distress at home and school.", poster_path: "/qJdfO3ahgAMf2rcmhoqngjBBZW1.jpg", vote_average: 8.6, vote_count: 1522, genre_ids: [16,35,10759,10765], first_air_date: "2013-12-02")

# TvShow.create(name: "His Dark Materials", TMDB_ID: 68507, overview: "Lyra is an orphan who lives in a parallel universe in which science, theology and magic are entwined. Lyra's search for a kidnapped friend uncovers a sinister plot involving stolen children, and turns into a quest to understand a mysterious phenomenon called Dust. She is later joined on her journey by Will, a boy who possesses a knife that can cut windows between worlds. As Lyra learns the truth about her parents and her prophesied destiny, the two young people are caught up in a war against celestial powers that ranges across many worlds.", poster_path: "/xOjRNnQw5hqR1EULJ2iHkGwJVA4.jpg", vote_average: 7.8, vote_count: 72, genre_ids: [18, 10765], first_air_date: "2019-11-03" )

# TvShow.create(name: "Family Guy", TMDB_ID: 1434, overview: "Sick, twisted, politically incorrect and Freakin' Sweet animated series featuring the adventures of the dysfunctional Griffin family. Bumbling Peter and long-suffering Lois have three kids. Stewie (a brilliant but sadistic baby bent on killing his mother and taking over the world), Meg (the oldest, and is the most unpopular girl in town) and Chris (the middle kid, he's not very bright but has a passion for movies). The final member of the family is Brian - a talking dog and much more than a pet, he keeps Stewie in check whilst sipping Martinis and sorting through his own life issues.", poster_path: "/gBGUL1UTUNmdRQT8gA1LUV4yg39.jpg", vote_average: 6.5, vote_count: 1729, genre_ids: [16, 35], first_air_date: "1999-01-31")

# user1 = User.find(1)
# user2 = User.find(2)

# user1.tv_shows << TvShow.find(1)
# user1.tv_shows << TvShow.find(2)
# user1.tv_shows << TvShow.find(3)

# user2.tv_shows << TvShow.find(4)