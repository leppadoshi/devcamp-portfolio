class Portfolio < ApplicationRecord

	validates_presence_of :title, :body, :main_image, :thumb_image

#option 1 (best)
	def self.angular
		where(subtitle: 'Angular')
	end

#option 2 (other)
	scope :ruby_on_rails_portfolio_items -> { where(subtitle: 'Ruby on Rails') }
end
