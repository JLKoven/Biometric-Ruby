class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # used in seeds file
  def self.match_primary_key_sequence
    sql = "SELECT pg_catalog.setval(pg_get_serial_sequence('#{table_name}', 'id'), MAX(id)) FROM #{table_name};"
    connection.execute(sql)
  end
end
