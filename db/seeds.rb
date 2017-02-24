# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

stark = House.create(name: "Stark", words: "Winter is Coming", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142")
lannister = House.create(name: "Lannister", words: "Lannister always pays his debts", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20170101095357")
targaryen = House.create(name: "Targaryen", words: "Fire and Blood", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20161206005534")

Character.create(name: "Jon Snow", img_url:"http://vignette3.wikia.nocookie.net/gameofthrones/images/4/49/Battle_of_the_Bastards_08.jpg/revision/latest?cb=20160615184845", house: stark)
Character.create(name: "Eddard Stark", img_url:"-", house: stark)
Character.create(name: "Tyrion Lannister", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/9/9d/Tyrion6x082.png/revision/latest?cb=20160609061404", house: targaryen)
Character.create(name: "Daenerys Targaryen", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/88/Daenerys-0.jpg/revision/latest?cb=20170106122450", house: targaryen)
Character.create(name: "Jaime Lannister", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c5/Jaime_s6_Ep08_.jpg/revision/latest?cb=20161215030911", house: lannister)
