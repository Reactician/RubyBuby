class Cow < ApplicationRecord
	validates :name, presence: true
	validates :weight, :numericality => { :greater_than_or_equal_to => 0 }
	validates :age, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 99} 
end
