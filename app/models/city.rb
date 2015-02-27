class City < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3}
	validates :short_name, presence: true, length: {minimum: 2}
end
