class Portfolio < ApplicationRecord
	has_many :technologies, dependent: :destroy
	has_one_attached :thumb_image
	has_one_attached :main_image
	accepts_nested_attributes_for :technologies,
									allow_destroy: true, 
									reject_if: lambda { |attrs| attrs['name'].blank? }

	validates_presence_of :title, :body


#option 1 (best, custom scope)
	def self.angular
		where(subtitle: 'Angular')
	end
#
#option 2 (other)
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
#

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