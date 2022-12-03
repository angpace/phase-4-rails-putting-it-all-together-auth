puts "seeding data..."

angela = User.create(username: "Angela", password: "1234", image_url: "https://thumbs.dreamstime.com/b/two-cute-golden-retriever-puppies-playing-photo-45116795.jpg" , bio: "Just living life.")
kevin = User.create(username: "Kevin", password: "12345", image_url: "https://thumbs.dreamstime.com/b/two-cute-golden-retriever-puppies-playing-photo-45116795.jpg" , bio: "Same as Angela")
sylvia = User.create(username: "Sylvia" , password: "eggs" , image_url: "https://thumbs.dreamstime.com/b/two-cute-golden-retriever-puppies-playing-photo-45116795.jpg", bio: "I love eggs")
kai = User.create(username: "Kai", password: "kai", image_url: "https://thumbs.dreamstime.com/b/two-cute-golden-retriever-puppies-playing-photo-45116795.jpg", bio: "yum lox")
nick = User.create(username: "Nick" , password: "1234" , image_url: "https://thumbs.dreamstime.com/b/two-cute-golden-retriever-puppies-playing-photo-45116795.jpg" , bio: "hello drugs")


cookies = Recipe.create(title: "cookies", instructions: "Use creaming method, butter and sugar first, followed by eggs.", minutes_to_complete: 10, user_id: 1)
bread = Recipe.create(title: "bread", instructions: "I love the bake bread bread bread bread" , minutes_to_complete: 60, user_id: 1)
bagel = Recipe.create(title: "bagel", instructions: "I owuld like to eat a bagel right now actually!" , minutes_to_complete: 30, user_id: 2 )
bananas = Recipe.create(title: "bananas", instructions: "you dont have to do much with the bananas, just eat them" , minutes_to_complete: 1 , user_id: 2)
soup = Recipe.create(title: "soup" , instructions: "boil everything together", minutes_to_complete: 50 , user_id: 1 )

puts "done seeding..."