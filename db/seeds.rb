# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

challenges = [
  { name: 'Fornalha Infernal', identifier: 'fornalha', completion_times: 2, quests: 2, period: 1, down_days: nil, splash: nil },
  { name: 'Altar da Ruína', identifier: 'altar', completion_times: 2, quests: 2, period: 1, down_days: nil, splash: nil },
  { name: 'Torre das Ilusões', identifier: 'ilusoes', completion_times: 3, quests: 3, period: 2, down_days: nil, splash: nil },
  { name: 'Covil do Berkas', identifier: 'berkas', completion_times: 1, quests: 1, period: 1, down_days: nil, splash: nil },
  { name: 'Terra do Julgamento', identifier: 'harkyon', completion_times: 3, quests: 1, period: nil, down_days: '1234', splash: nil },
  { name: 'Torre da Extinção', identifier: 'extincao', completion_times: 3, quests: 1, period: 3, down_days: nil, splash: nil },
]

db_challenges = challenges.map do |challenge|
  Challenge.create(challenge)
end

chars = [
  { name: 'Arme', splash: 'http://localhost:3000/arme.png', color1: nil, color2: nil, color3: nil },
  { name: 'Elesis', splash: 'http://localhost:3000/elesis.png', color1: nil, color2: nil, color3: nil },
  { name: 'Lire', splash: 'http://localhost:3000/lire.png', color1: nil, color2: nil, color3: nil },
  { name: 'Lass', splash: 'http://localhost:3000/lass.png', color1: nil, color2: nil, color3: nil },
  { name: 'Ryan', splash: 'http://localhost:3000/ryan.png', color1: nil, color2: nil, color3: nil },
  { name: 'Ronan', splash: 'http://localhost:3000/ronan.png', color1: nil, color2: nil, color3: nil },
  { name: 'Amy', splash: 'http://localhost:3000/amy.png', color1: nil, color2: nil, color3: nil },
  { name: 'Jin', splash: 'http://localhost:3000/jin.png', color1: nil, color2: nil, color3: nil },
  { name: 'Sieghart', splash: 'http://localhost:3000/sieghart.png', color1: nil, color2: nil, color3: nil },
  { name: 'Mari', splash: 'http://localhost:3000/mari.png', color1: nil, color2: nil, color3: nil },
  { name: 'Dio', splash: 'http://localhost:3000/dio.png', color1: nil, color2: nil, color3: nil },
  { name: 'Zero', splash: 'http://localhost:3000/zero.png', color1: nil, color2: nil, color3: nil },
  { name: 'Rey', splash: 'http://localhost:3000/rey.png', color1: nil, color2: nil, color3: nil },
  { name: 'Lupus', splash: 'http://localhost:3000/lupus.png', color1: nil, color2: nil, color3: nil },
  { name: 'Lin', splash: 'http://localhost:3000/lin.png', color1: nil, color2: nil, color3: nil },
  { name: 'Azin', splash: 'http://localhost:3000/azin.png', color1: nil, color2: nil, color3: nil },
  { name: 'Holy', splash: 'http://localhost:3000/holy.png', color1: nil, color2: nil, color3: nil },
  { name: 'Edel', splash: 'http://localhost:3000/edel.png', color1: nil, color2: nil, color3: nil },
  { name: 'Veigas', splash: 'http://localhost:3000/veigas.png', color1: nil, color2: nil, color3: nil },
  { name: 'Uno', splash: 'http://localhost:3000/uno.png', color1: nil, color2: nil, color3: nil },
]

chars.each do |char|
  db_char = Char.create(char)

  db_challenges.each do |challenge|
    CharChallenge.create(char: db_char, challenge: challenge, completed_times: 0, quests_completed: 0)
  end
end