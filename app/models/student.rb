class Student < ApplicationRecord
  require 'csv'

  def self.import(file)
    Student.delete_all
    CSV.foreach(file.path, headers:true) do |row|
      Student.create! row.to_hash 
    end
  end
end
