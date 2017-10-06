require 'csv'

csv_with_class_names = {
  Visit: "visits.csv",
  DateItem: "dateItem.csv",
  Set: "sets.csv"
}

csv_with_class_names.each do |class_name, csv_file|
  binding.pry
  class_name = class_name.to_s.constantize
  CSV.readlines(csv_file, headers: true) do |row|
    data = {}
    row.headers.each do |header|
      data[header] = row[header]
    end
    class_name.find_or_create_by(data)
  end
end
