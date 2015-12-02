# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.create(
	Title: 'a1',
    Description:
    %{
	<p>
	ajowejowjf
	</p>
},
    Img_url: 'wine1.jpg',
    Origin: 'French',
    Type: 'white',
    Size: '14ol',
    Price: '$20',
    Company: 'djfofjwof',
    #Suit_veg: true
      )