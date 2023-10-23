require "json"
require "open-uri"

module Poloar
  module V1
    class Base
      def self.api
        url = "https://www.poloar.com.br/ar-condicionado/split?map=c,c"
        product_serialized = URI.open(url).read
        product = Nokogiri::HTML.parse(product_serialized)
        product_list = product.search(".product-name").map { |e| e.children.text }
        product_values = product.search(".product-price").map { |e| e.children.children[2] }
      
        combined = Hash[product_list.zip(product_values)]
        return combined
      end
    end
  end
end
  