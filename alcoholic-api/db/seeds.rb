# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Beer.delete_all
Review.delete_all
User.delete_all

Beer.create [
  {
    name: 'Alivaria Strong',
    manufacturer: 'Alivaria',
    origin_country: 'Belarus',
    first_brewed_in: '01.01.1991',
    alcohol: 5.0,
    reviews_attributes: [
      {
        title: 'Disgusting experience',
        content:'Most terrific experience of my life. Bad taste, bad smell. Good price though... For a dirty water.',
        score: 0.5
      },
      {
        title: 'I liek taht beeerr',
        content: 'Filling kinda dizzi. Two of 0.5s made me a Superman. Love it',
        score: 10.0
      },
      {
        title: 'Pretty average',
        content: 'Pretty average beer. Nothing less, nothing more.',
        score: 5.0
      }
    ]
  },
  {
    name: 'London Pride',
    manufacturer: 'Fuller',
    origin_country: 'Great Britain',
    first_brewed_in: '01.01.1816',
    alcohol: 4.5,
    reviews_attributes: [
      {
        title: 'Pretty goddamn good beer!',
        content:'I like the taste, I like the smell, I like the price. I love freakn everything! I strongly recommend to drink it with chechyll ',
        score: 8.5
      },
      {
        title: 'Pretty average',
        content: 'Pretty average beer. Nothing less, nothing more.',
        score: 5.0
      },
      {
        title: 'I liek taht beeerr',
        content: 'Filling kinda dizzi. Two of 0.5s made me a Superman. Love it',
        score: 10.0
      }
    ]
  },
  {
    name: 'Discovery Blonde',
    manufacturer: 'Fuller',
    origin_country: 'Great Britain',
    first_brewed_in: '01.01.1923',
    alcohol: 4.5,
    reviews_attributes: [
      {
        title: 'Pretty average',
        content: 'Pretty average beer. Nothing less, nothing more.',
        score: 5.0
      },
      {
        title: 'Pretty goddamn good beer!',
        content:'I like the taste, I like the smell, I like the price. I love freakn everything! I strongly recommend to drink it with chechyll ',
        score: 8.5
      },
      {
        title: 'I liek taht beeerr',
        content: 'Filling kinda dizzi. Two of 0.5s made me a Superman. Love it',
        score: 10.0
      }
    ]
  }
]
