# Define mapping b/w grid and data source
module Vgrid
  class DataMapper

    def self.map_data(options = {})
      options = {model: employee, columns: ['id', 'name'], rows: 10}
      # Employee.search.select(options[:columns]).limit(rows).each { |row|
      #  
      #
      # }
    end

  end
end