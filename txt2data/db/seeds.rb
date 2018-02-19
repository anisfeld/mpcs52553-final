# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'some_data_1.csv'))
# csv_text = csv_text.encode("UTF-16be", :invalid=>:replace, :replace=>"?").encode('UTF-8')
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
Txt.delete_all

file_path = Rails.root.join('lib', 'seeds', 'JobText_US_01-03-2016.csv')

CSV.foreach(file_path, headers: true, encoding: 'ISO-8859-1',  col_sep: "\t" ) do |row| 
	Txt.create! row.to_hash
end

puts "Added #{Txt.count} texts to database"


# require 'csv'
# file_path = Rails.root.join('lib', 'seeds', 'some_data_1.csv')

# CSV.foreach(file_path, headers: true, encoding: 'ISO-8859-1') do |row| 
# 	puts row.to_hash
# end

