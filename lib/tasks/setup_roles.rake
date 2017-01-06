task :setup_roles => :environment do

#Role Creation
	Role.create(name: "admin")
	Role.create(name: "user")

#User Creation & Assigning roles
	#Admin
	user = User.create(email: "admin@gmail.com", password: "admin123")
	user.roles.push(Role.first)
	user.roles.push(Role.last)

	user1 = User.create(email: "aswin@gmail.com", password: "aswin123")
	user1.roles.push(Role.last)

end
