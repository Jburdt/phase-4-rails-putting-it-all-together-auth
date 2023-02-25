puts "Seeding Data!"
puts "Destroying Data!"
User.destroy_all
Recipe.destroy_all

mike = User.create(username: "Mike", password: "1234", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5BIKYqiM-v_rMXwHYRI5wU6UrBAImVgf0Cg&usqp=CAU", bio: "AGQKie2kSvUBMlUG84R7rlSePiTjkz7TmuA85DV0dJk5uF3l0p")
jared = User.create(username: "Jared", password: "1234", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5BIKYqiM-v_rMXwHYRI5wU6UrBAImVgf0Cg&usqp=CAU", bio: "AGQKie2kSvUBMlUG84R7rlSePiTjkz7TmuA85DV0dJk5uF3l0p")
lizzie = User.create(username: "Lizzie", password: "1234", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5BIKYqiM-v_rMXwHYRI5wU6UrBAImVgf0Cg&usqp=CAU", bio: "AGQKie2kSvUBMlUG84R7rlSePiTjkz7TmuA85DV0dJk5uF3l0p")
jordan = User.create(username: "Jordan", password: "1234", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5BIKYqiM-v_rMXwHYRI5wU6UrBAImVgf0Cg&usqp=CAU", bio: "AGQKie2kSvUBMlUG84R7rlSePiTjkz7TmuA85DV0dJk5uF3l0p")

r1 = Recipe.create(title: "chicken", instructions: "ZUYv1GYfyqJp1chMYZlXgvMQvCuRw3d0I0w2EmzL6s9ss8nZCC", minutes_to_complete: 12, user_id: mike.id)
r2 = Recipe.create(title: "steak", instructions: "MJcfp4df5E7GLvncP1lOcVYwTel4Dg2cGcTZw3BcnifI0V8eSL", minutes_to_complete: 12, user_id: jared.id)
r3 = Recipe.create(title: "popcorn", instructions: "XCoVXzrtlMMr2op0iBd3P5JdhNnUkDlisgEMZzaYdOJyeVqbrl", minutes_to_complete: 12, user_id: lizzie.id)

puts 'Done Seeding!'