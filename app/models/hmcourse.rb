class Hmcourse < ApplicationRecord
  require 'csv'

  def self.import(file)
    Hmcourse.delete_all
    CSV.foreach(file.path, headers:true) do |row|
      Hmcourse.create! row.to_hash 
    end
  end
end
