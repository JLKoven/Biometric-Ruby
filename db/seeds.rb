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

csv_with_class_names = {
  Visit: "visits.csv",
  DateItem: "dateItem.csv",
  Set: "sets.csv"
}

csv_with_class_names.each do |class_name, csv_file|
  class_name = class_name.to_s.constantize
  csv_text = File.read(Rails.root.join('db', csv_file))
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    data = row.to_h
    data['date'] = Date.strptime(data['date'], "%m/%d/%Y") if data['date']
    class_name.find_or_create_by(data)
  end
end
