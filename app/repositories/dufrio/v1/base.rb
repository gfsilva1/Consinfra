require "json"
require "open-uri"

module Dufrio
  module V1
    class Base
      def self.api
        url = "https://www.dufrio.com.br/ar-condicionado/split"
        product_serialized = URI.open(url).read
        product = Nokogiri::HTML.parse(product_serialized)
        product_list = product.search(".product-item-link").map { |e| e.children.text }.last(17)
        product_values = product.search("#cash_down").map { |e| e.children.text }
        product_images = product.search(".product-item-info-no-border img").map { |e| e.attributes["src"].value }        
      
        combined = Hash[product_list.zip(product_values)]
        return combined
      end
    end
  end
end
  