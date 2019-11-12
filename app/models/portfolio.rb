class Portfolio < ApplicationRecord

	validates_presence_of :title, :body, :main_image, :thumb_image

#option 1 (best)
	def self.angular
		where(subtitle: 'Angular')
	end

#option 2 (other)
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://place-hold.it/600x400/grey/black"
		self.thumb_image ||= "https://place-hold.it/350x200/grey/black"
	end
end