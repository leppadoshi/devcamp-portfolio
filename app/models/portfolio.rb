class Portfolio < ApplicationRecord
	has_many :technologies, dependent: :destroy
	has_one_attached :thumb_image
	has_one_attached :main_image
	accepts_nested_attributes_for :technologies, 
									reject_if: lambda { |attrs| attrs['name'].blank? }

	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image


#option 1 (best, custom scope)
	def self.angular
		where(subtitle: 'Angular')
	end
#
#option 2 (other)
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
#
	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end

	def main_image_url
    if self.main_image.attachment
      self.main_image.attachment.service_url
    end
  end

  def thumb_image_url
    if self.thumb_image.attachment
      self.thumb_image.attachment.service_url
    end
  end
end