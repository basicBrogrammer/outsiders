# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

userone = User.create(email: 'userone@email.com', password: 'password')
usertwo = User.create(email: 'usertwo@email.com', password: 'password')
userthree = User.create(email: 'userthree@email.com', password: 'password')

Photo.create(description:'user one photo 1',image: File.open(File.join(Rails.root, 'app/assets/images/userone1.jpeg')), user_id: userone.id, profile: true )
Photo.create(description:'user two photo 1',image: File.open(File.join(Rails.root, 'app/assets/images/usertwo1.jpeg')), user_id: usertwo.id, profile: true )
Photo.create(description:'user three photo 1',image: File.open(File.join(Rails.root, 'app/assets/images/userthree1.jpeg')), user_id: userthree.id, profile: true )

Photo.create(description:'user one photo 2',image: File.open(File.join(Rails.root, 'app/assets/images/userone2.jpeg')), user_id: userone.id )
Photo.create(description:'user two photo 2',image: File.open(File.join(Rails.root, 'app/assets/images/usertwo2.jpeg')), user_id: usertwo.id )
Photo.create(description:'user three photo 2',image: File.open(File.join(Rails.root, 'app/assets/images/userthree2.jpeg')), user_id: userthree.id )

Photo.create(description:'user one photo 3',image: File.open(File.join(Rails.root, 'app/assets/images/userone3.jpeg')), user_id: userone.id )
Photo.create(description:'user two photo 3',image: File.open(File.join(Rails.root, 'app/assets/images/usertwo3.jpeg')), user_id: usertwo.id )
Photo.create(description:'user three photo 3',image: File.open(File.join(Rails.root, 'app/assets/images/userthree3.jpeg')), user_id: userthree.id )

Video.create(movie_embed:'https://www.youtube.com/watch?v=J4UwwYu_JiU',summary:"user one video 1", city:"whiteville", state:"nc", user_id: userone.id, huntType: "duck")
Video.create(movie_embed:'https://www.youtube.com/watch?v=ITtvyl3t4MQ',summary:"user two video 1", city:"raleigh", state:"ca", user_id: usertwo.id, huntType: "duck")
Video.create(movie_embed:'https://www.youtube.com/watch?v=iOrG87EOep0',summary:"user three video 1", city:"clemmens", state:"co", user_id: userthree.id, huntType: "duck")

Video.create(movie_embed:'https://www.youtube.com/watch?v=CDDIT2eq7Yg',summary:"user one video 2", city:"thomasville", state:"nc", user_id: userone.id, huntType: "duck")
Video.create(movie_embed:'https://www.youtube.com/watch?v=QZpmCIeZ8Bc',summary:"user two video 2", city:"atlanta", state:"ga", user_id: usertwo.id, huntType: "deer")
Video.create(movie_embed:'https://www.youtube.com/watch?v=11lpvcAvzvw',summary:"user three video 2", city:"beufort", state:"sc", user_id: userthree.id, huntType: "deer")

Video.create(movie_embed:'https://www.youtube.com/watch?v=mvYOkSUj2wA',summary:"user one video 3", city:"salem", state:"ky", user_id: userone.id, huntType: "deer")
Video.create(movie_embed:'https://www.youtube.com/watch?v=k5GevnuvqjU',summary:"user two video 3", city:"winston", state:"tn", user_id: usertwo.id, huntType: "deer")
Video.create(movie_embed:'https://www.youtube.com/watch?v=losbfhsU57M',summary:"user three video 3", city:"there", state:"ny", user_id: userthree.id, huntType: "deer")

