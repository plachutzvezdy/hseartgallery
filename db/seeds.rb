# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

@cover_path = "app/assets/images/covers/"

def cover (file_name)
  File.open(File.join(Rails.root, @cover_path + file_name))
end

exhibitions = [
  {
    name: "Новые лозунги",
    about: "11.09 — 06.10
    Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    cover: cover("cover1.jpg")
  },
  {
    name: "Твёрдые вещи",
    about: "11.09 — 06.10
    Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    cover: cover("cover2.jpg")
  },
  {
    name: "Настоящее прошлое",
    about: "11.09 — 06.10
    Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    cover: cover("cover3.jpg")
  },
  {
    name: "WHAT TIME ARE YOU?",
    about: "11.09 — 06.10
    Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным. Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    cover: cover("cover4.jpg")
  },
  {
    name: "Новые лозунги",
    about: "11.09 — 06.10
    Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    cover: cover("cover5.jpg")
  }
]

exhibitions.each do |exhibition|
  e = Exhibition.create!(exhibition)
end

artworks = [
  {
    name: "Экспонат",
    about: "Красивый"
  },
  {
    name: "Экспонат",
    about: "Красивый"
  },
  {
    name: "Экспонат",
    about: "Красивый"
  }
]

artworks.each do |artwork|
  a = Artwork.create(artwork)
end

curators = [
  {
    name: "Имя Фамилия",
    about: "Замечательный"
  },
  {
    name: "Имя Фамилия",
    about: "Замечательный"
  },
  {
    name: "Имя Фамилия",
    about: "Замечательный"
  }
]

curators.each do |artwork|
  a = Artwork.create(artwork)
end
