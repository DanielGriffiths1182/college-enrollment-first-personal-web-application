require 'active_record'

class Enrollment < ActiveRecord::Base
  self.table_name = 'enrollment'

  validates :year, :freshman, :sophmore, :junior, :senior, :graduate, :total, presence: true
end
