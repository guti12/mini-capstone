# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# gelato = Gelato.new(flavor: "Vanilla", price: 2, image: "http://cf.savorysimple.net/v1/wp-content/uploads/2014/02/web-Vanilla-Milk-Gelato-017.jpg", description: "This vanilla gelato is made from scratch with some really great Madagascar Vanilla Beans -- doens't get better than that!")

# gelato.save

# gelato = Gelato.new(flavor: "Chocolate", price: 3, image: "http://2.bp.blogspot.com/-Iw-e459vCvc/TyNvolJU05I/AAAAAAAAHhg/tWIT7oAby7Y/s1600/2.jpg", description: "Do you like chocolate? Then you'll love this chocolate concoction. Come on and check out our Chocolate Gelato today!")

# gelato.save

# gelato = Gelato.new(flavor: "Strawberry", price: 2, image: "https://static1.squarespace.com/static/533f584fe4b0f77e1bd2e4d1/534f49ebe4b0d25032533640/534f49fde4b0d25032533ec6/1397706809227/", description: "'MMMMMM...strawberry...' - said everyone, ever. We all know that strawberry is our secret favorite. Maybe guilty pleasure? This one is too good to pass up!")

# gelato.save

Image.create!([
	{ url: "http://cf.savorysimple.net/v1/wp-content/uploads/2014/02/web-Vanilla-Milk-Gelato-017.jpg",
		product_id: 1,
		name: "vanilla gelato 1"
	},
	{ url: "http://www.saveur.com/sites/saveur.com/files/styles/large_1x_/public/images/2015/11/sicilian-vanilla-gelato-2000x1500.jpg?itok=e8KPY9hy",
		product_id: 1,
		name: "vanilla gelato 2"
	},
	{
		url: "http://aapplemint.com/wp-content/uploads/2010/01/vanilla-gelato2.jpg",
		product_id: 1,
		name: "vanilla gelato 3"
	},
	{
		url: "https://i.ytimg.com/vi/SMnB2SB6WhA/maxresdefault.jpg",
		product_id: 2,
		name: "chocolate gelato 1"
	},
	{
		url: "http://cookingontheweekends.com/wp-content/uploads/2012/04/April2-choc-gelato21.jpg",
		product_id: 2,
		name: "chocolate gelato 2"
	}
	])
	
