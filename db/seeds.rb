# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rake'

Rake::Task['seed_data:users'].invoke()
Rake::Task['seed_data:groups'].invoke()
Rake::Task['seed_data:user_groups'].invoke()
Rake::Task['seed_data:subjects'].invoke()


# u = User.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password', :name => 'Rahul', :roll_no => 8, :branch => 'CO', :year => 'ty' )
# u.save
# puts "User created"

# g = Group.new(:created_by => u.id,:code => 2,:updated_by => u.id ,:name => "xyz", :criteria => "1st")
# g.save
# puts "Group created"

# s = Subject.new(:created_by => u.id,:updated_by => u.id ,:name => "Java", :year => "TY", :code => "AJP")
# s.save
# puts "Subject created"

# p = Project.new(:created_by => u.id,:updated_by => u.id ,:description => "This is the best project i ever made!",:category => "Software",:title => "xyz management system",:key =>"xyz" , :start => 2017-12-01, :end => 2017-12-18, :year => "TY", group_id: g.id, subject_id: s.id)
# p.save
# puts "Project created"

# r = Requriment.new(:created_by => u.id,:updated_by => u.id ,:front_end => "Html,Css", :back_end => "ruby_on_rails", :type_of_model => "Spiral_Model", project_id: p)
# r.save
# puts "Req. created"

# t = ToDo.new(:created_by => u.id,:updated_by => u.id ,:priority => 1,:assignee => u.id ,:_type => "Bug",:title => "Complete front end part of the login page", project_id: p.id, :status => "Todo")
# t.save
# puts "Todo created"
