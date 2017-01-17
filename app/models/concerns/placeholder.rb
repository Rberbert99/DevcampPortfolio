module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://Placeholder.it/#{height}x#{width}"

  end
end