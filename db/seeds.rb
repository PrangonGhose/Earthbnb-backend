# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
houses_data = [
   {
     house_name: 'Cozy Cottage',
     address: '123 Main Street, City',
     rooms: 3,
     beds: 2,
     picture: 'https://dam-assets.au.reastatic.net/images/w_2000,h_1500/v1666226657/news-lifestyle-content-assets/wp-content/production/image-10_787815ed2d9/image-10_787815ed2d9.jpg?_i=AA',
     price_by_night: 100.0,
     description: 'A charming cottage nestled in a peaceful neighborhood.'
   },
   {
     house_name: 'Luxury Villa',
     address: '456 Elm Avenue, Town',
     rooms: 5,
     beds: 4,
     picture: 'https://img.staticmb.com/mbcontent/images/uploads/2022/12/Most-Beautiful-House-in-the-World.jpg',
     price_by_night: 500.0,
     description: 'An exquisite villa with stunning views and top-notch amenities.'
   },
   {
     house_name: 'Seaside Retreat',
     address: '789 Beach Road, Coastal City',
     rooms: 4,
     beds: 3,
     picture: 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bHV4dXJ5JTIwaG91c2V8ZW58MHx8MHx8&w=1000&q=80',
     price_by_night: 200.0,
     description: 'Escape to this beautiful seaside retreat and enjoy the sound of crashing waves.'
   },
   {
     house_name: 'Mountain Cabin',
     address: '321 Pine Trail, Mountain Village',
     rooms: 6,
     beds: 4,
     picture: 'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OHx8fGVufDB8fHx8&w=1000&q=80',
     price_by_night: 150.0,
     description: 'Experience the tranquility of nature in this cozy mountain cabin.'
   },
   {
     house_name: 'Modern City Apartment',
     address: '987 High Rise Avenue, Urban Center',
     rooms: 5,
     beds: 3,
     picture: 'https://assets-news.housing.com/news/wp-content/uploads/2022/04/07013406/ELEVATED-HOUSE-DESIGN-FEATURE-compressed.jpg',
     price_by_night: 80.0,
     description: 'Live in style in this modern apartment located in the heart of the city.'
   },
   {
     house_name: 'Rustic Farmhouse',
     address: '654 Country Lane, Countryside',
     rooms: 6,
     beds: 4,
     picture: 'https://www.myhousedesignbuild.com/wp-content/uploads/2022/02/MyHouse-coquitlam-gem-1920x1080-1.jpg',
     price_by_night: 300.0,
     description: 'Experience the charm of a rustic farmhouse surrounded by picturesque landscapes.'
   },
   {
     house_name: 'Historic Manor',
     address: '246 Heritage Road, Old Town',
     rooms: 8,
     beds: 6,
     picture: 'https://www.bankrate.com/2022/08/04093343/Buying-a-house-with-an-LLC.jpg?auto=webp&optimize=high&crop=16:9',
     price_by_night: 400.0,
     description: 'Step back in time and indulge in luxury at this historic manor with a rich heritage.'
   },
   {
     house_name: 'Serenity Villa',
     address: '135 Peaceful Lane, Tranquil City',
     rooms: 7,
     beds: 5,
     picture: 'https://cdn.home-designing.com/wp-content/uploads/2017/05/wood-white-and-charcoal-modern-exterior-paint-themes.jpg',
     price_by_night: 350.0,
     description: 'Find peace and serenity at this stunning villa surrounded by lush gardens.'
   },
   {
     house_name: 'Beachfront Bungalow',
     address: '753 Shoreline Road, Sunny Beach',
     rooms: 7,
     beds: 4,
     picture: 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&w=1000&q=80',
     price_by_night: 120.0,
     description: 'Wake up to breathtaking ocean views at this charming beachfront bungalow.'
   }
 ]
 
 houses_data.each do |house_data|
   House.create(house_data)
 end