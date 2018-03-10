# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Datum.delete_all
User.delete_all
Project.delete_all

User.create email: 'bob@example.org', password: 'Hope4All', first_name: "Bob", last_name: "Hope"
User.create email: 'barry@example.org', password: 'Hope4Change', first_name: "Barack", last_name: "Obama"
User.create email: 'ayn@example.org', password: 'Hope4Some', first_name: "Ayn", last_name: "Rand"
User.create email: 'hannah@example.org', password: 'Hope4Hope', first_name: "Hannah", last_name: "Arendt"



projects =  [ {logo_url: "https://images-na.ssl-images-amazon.com/images/I/51TyZI03%2B9L._SX303_BO1,204,203,200_.jpg",
			   title: "Atlas Shrugged",
			   description: "A book",
			   is_public: true,
			   user_id: User.find_by(email: 'ayn@example.org').id},
			
			{logo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/1200px-Flag_of_Denmark.svg.png",
			   title: "Denmark",
			   description: "A prison?",
			   is_public: true,
			   user_id: User.find_by(email: 'ayn@example.org').id},
			
			{logo_url: "https://images-na.ssl-images-amazon.com/images/I/51kaUcYd9%2BL._SX320_BO1,204,203,200_.jpg",
			   title: "Dreams from My Father",
			   description: "He slept a lot",
			   is_public: true,
			   user_id: User.find_by(email: 'barry@example.org').id},


			{logo_url: "data:image/jpeg;base64,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" ,
			   title: "A Team of Rivals",
			   description: "Good idea? Bad idea?",
			   is_public: true,
			   user_id: User.find_by(email: 'barry@example.org').id} 
			]

projects.each do |proj|
	p = Project.new
	p.title = proj[:title]
	p.description = proj[:description]
	p.logo_url = proj[:logo_url]
	p.is_public = proj[:is_public]
	p.user_id = proj[:user_id]
	p.save
end   


file_path = Rails.root.join('lib', 'seeds', 'some_data.csv')

project = Project.find_by(title: "A Team of Rivals")
Datum.import(file_path, project.id)
project.data_id = Datum.all.first.id
project.save


project = Project.find_by(title: "Dreams from My Father")
Datum.import(file_path, project.id)
project.data_id = Datum.where(project_id: project.id).first.id
project.save



print "There are now #{Project.count} Projects in the database.\n"
print "There are now #{User.count} users in the database.\n"
print "There are now #{Datum.count} data in the database.\n"