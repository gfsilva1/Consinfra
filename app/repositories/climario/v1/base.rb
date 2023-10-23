require "json"
require "open-uri"

module Climario
  module V1
    class Base
      def self.api
        url = "https://www.climario.com.br/ar-condicionado"
        product_serialized = URI.open(url).read
        product = Nokogiri::HTML.parse(product_serialized)
        product_list = product.search(".price").map { |e| e.elements[0].attributes["title"].value }
        product_values = product.search(".price").map { |e| e.elements[0].children.children.text.strip }
      
        combined = Hash[product_list.zip(product_values)]
        return combined
      end
    end
  end
end
  