class CourseResult < ApplicationRecord
  validates :usd, :numericality => { :greater_than_or_equal_to => 0 }
  validates :eur, :numericality => { :greater_than_or_equal_to => 0 }
  validates :rur, :numericality => { :greater_than_or_equal_to => 0 }
end
