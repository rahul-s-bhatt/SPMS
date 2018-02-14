namespace :seed_data do
  require 'csv'

  desc "load users"
  task :users => :environment do
    puts "Creating users"
    data = CSV.read("#{Rails.root.to_s}/ref/users.csv")
    data.each_with_index do |line, index|
      next if index == 0
      u = User.create({
        email: line[1],
        password: 'password',
        password_confirmation: 'password',
        name: line[2],
        roll_no: line[3],
        year: line[4],
        branch: line[5],
        image_url: line[6],
        role: line[0]
      })
    end
  end

  desc "load groups data"
  task :groups => :environment do
    puts "Creating Groups"
    u = User.first
    data = CSV.read("#{Rails.root.to_s}/ref/groups.csv")
    data.each_with_index do |line, index|
      next if index == 0
      Group.create({
        name: line[0],
        code: rand(1..100).to_i,
        criteria: line[1],
        created_by: u.id,
        updated_by: u.id
      })
    end
  end

  desc "load user_groups data"
  task :user_groups => :environment do
    puts "Creating User Groups"
    u = User.first
    data = CSV.read("#{Rails.root.to_s}/ref/user_groups.csv")
    data.each_with_index do |line, index|
      next if index == 0
      UserGroup.create({
        user_id: line[0],
        group_id: line[1],
        created_by: u.id,
        updated_by: u.id
      })
    end
  end

  desc "load subjects data"
  task :subjects => :environment do
    puts "Creating Subjects"
    u = User.first
    data = CSV.read("#{Rails.root.to_s}/ref/subjects.csv")
    data.each_with_index do |line, index|
      next if index == 0
      Subject.create({
        name: line[0],
        code: line[1],
        year: line[2],
        created_by: u.id,
        updated_by: u.id
      })
    end
  end

end