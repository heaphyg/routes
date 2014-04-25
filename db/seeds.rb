# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users
10.times do
	name = Faker::Name.name
	email = Faker::Internet.email
	User.create(name: name, email: email, password: "password")
end

#posts
User.all.each do |user|
	rand(1..2).times do
		title = Faker::Lorem.word
	  content = Faker::Lorem.paragraph(6)
	  Post.create(user_id: user.id, title: title, content: content)
  end
end

#comments 
Post.all.each do |post|
	rand(3..5).times do
		message = Faker::Lorem.sentence
		Comment.create(post_id: post.id, message: message)
	end
end

#tags
40.times do
  category = Faker::Lorem.word
  Tag.create(category: category)
end


#taggings
Tag.all.each do |tag|
  rand(3..5).times do
  	post = Post.all.sample
      Tagging.create(tag_id: tag.id, post_id: post.id)
  end
end

