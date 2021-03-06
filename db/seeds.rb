3.times do |topic|
	Topic.create(
		title: "Topic #{topic}"
	)
end

puts "3 Topics created"

10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog}",
		body: "How much did you make me? Bender, we're trying our best. Isn't it true that you have been paid for your testimony? 
		When I was first asked to make a film about my nephew, Hubert Farnsworth, I thought \"Why should I?\" Then later, Leela made the film. 
		But if I did make it, you can bet there would have been more topless women on motorcycles. Roll film!",
		topic_id: Topic.last.id
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 skills created"

# 8.times do |portfolio_item|
# 	Portfolio.create!(
# 		title: "Portfolio title: #{portfolio_item}",
# 		subtitle: "Ruby on Rails",
# 		body: "This opera is as lousy as it is brilliant! Your lyrics lack subtlety. That makes me feel angry!",
# 		main_image: "https://place-hold.it/600x400/grey/black",
# 		thumb_image: "https://place-hold.it/350x200/grey/black"
# 		)
# end

# 1.times do |portfolio_item|
# 	Portfolio.create!(
# 		title: "Portfolio title: #{portfolio_item}",
# 		subtitle: "Angular",
# 		body: "This opera is as lousy as it is brilliant! Your lyrics lack subtlety. That makes me feel angry!",
# 		main_image: "https://place-hold.it/600x400/grey/black",
# 		thumb_image: "https://place-hold.it/350x200/grey/black"
# 		)
# end

# puts "9 portfolio items created"

# 3.times do |technology|
# 	Portfolio.last.technologies.create!(
# 		name: "Technology #{technology}"
# 		)
# end

# puts "3 technologies are created"