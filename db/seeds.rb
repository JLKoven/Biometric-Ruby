# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# weightLiftItem.find_or_create_by(id: 1, data: "5/10/2015", type: bench, program: initialFourSet, set_one: 185, rep_one: 7, set_two: 185, rep_two: 7, set_three: 185, rep_three: 7, set_four: 185, rep_four: 7)
# #...many more lines of this
# #...
# dateItem.find_or_create_by(id: 1, data: "5/15/2015", weight: 180, weight_avg: 182.2; cal: 2900)
# #...many more lines of this

require 'csv'

john = User.new
john.email = 'john.koven@gmail.com'
john.password = 'kenisthebest'
john.password_confirmation = 'kenisthebest'
john.save! unless !User.where(email: john.email).empty?

puts "Created John"

john2 = User.new
john2.email = 'johnkoven210@gmail.com'
john2.password = 'kenisthebest'
john2.password_confirmation = 'kenisthebest'
john2.save! unless !User.where(email: john2.email).empty?

puts "Created John2"

#user_list_association = [{'user1' => john, 'user2' => john2}]
#user_list = [{'user1' => john, 'user2' => john2}]

exercise_types = [
{'name' => 'bench', 'description' => 'compound chest exercise'},
{'name' => 'low squat', 'description' => 'compound leg exercise with focus on quadriceps'},
{'name' => 'overhead', 'description' => 'compound shoulder exercise'},
{'name' => 'deadlift', 'description' => 'sheer strength exercise'}
]

#user_list.each do |listedUser|
exercise_types.each do |type|
  var = type
  binding.pry
  var[:user_id] = john.user_id
  ExerciseType.find_or_create_by(var)
end
#end

exercise_programs = [
{'name' => 'initialFourSet', 'description' => 'variable weights, focus on first set as hardest'},
{'name' => 'Wendler1', 'description' => '5/5/5, lightest weight'},
{'name' => 'Wendler2', 'description' => '3/3/3, medium weight'},
{'name' => 'Wendler3', 'description' => '5/3/1, heaviest weight'},
{'name' => 'Wendler4', 'description' => 'Rest phase of cycle'}
]
exercise_programs.each do |type|
  var = type
  var[:user_id] = john.user_id
  ExerciseProgram.find_or_create_by(var)
end

csv_with_class_names = {
  ExerciseSession: "exercise_session.csv",
  GeneralStat: "general_stat.csv",
  WeightSet: "weight_set.csv"
}

csv_with_class_names.each do |class_name, csv_file|
  class_name = class_name.to_s.constantize
  csv_text = File.read(Rails.root.join('db', csv_file))
  csv = CSV.parse(csv_text, headers: true)

  csv.each do |row|
    data = row.to_h
    data['date'] = Date.strptime(data['date'], "%m/%d/%Y") if data['date']
    data.delete('user_id') if csv_file == "weight_set.csv"
#    data['exercise_type_id'] = ExerciseType.where(name: data['type_name']).first.id
    data['exercise_type_id'] = ExerciseType.where(name: data['type_name']).first.id if data['type_name']
#I don't need to say data['type_name'] == whatever, because I'm just testing for "if not null"
    data.delete('type_name') if data['type_name']
    data['exercise_program_id'] = ExerciseProgram.where(name: data['program']).first.id if data['program']
    data.delete('program') if data['program']

#    ExerciseType.all.each do |exerciseType|
#      data['exercise_type_id'] = exerciseType.id if exerciseType.name == data['type_name']
#    end
    class_name.find_or_create_by(data)
  end

  class_name.match_primary_key_sequence

  puts "Seeded #{class_name}s"
end
