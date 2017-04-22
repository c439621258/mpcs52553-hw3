# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = [["http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/KJwWW_other_large.jpg",1,"Joe and Rika Mansueto Library","The Mansueto Library can hold the equivalent of 3.5 million volumes through its automated storage and retrieval system. Mansueto's design reflects Regenstein Library next door, as well as Mitchell Tower beyond. Though Mansueto's glass dome structure creates a sense of permeability between the indoors and the outdoors, it is closely temperature controlled, staying cool in the hot summers and warm in the cold winters."],
      ["http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/IHOUSE_large.jpg",2,"International House","John D. Rockefeller Jr. established International House as a residence for international students. International House has recently completed a multi-year, $30 million restoration which has modernized resident and guest accommodations as well as updated meeting, conference and public event spaces will serve future generations of students, scholars and the community."],
      ["http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/RATNER_large.jpg",3,"Gerald Ratner Athletics Center","John D. Rockefeller Jr. established International House as a residence for international students. The Gerald Ratner Athletics Center's exterior is often described as a ship-like structure."]]


Place.delete_all

data.map do |entry|
  place = Place.new
  place.image_url = entry[0]
  place.id = entry[1]
  place.name = entry[2]
  place.desc = entry[3]
  place.save
end
