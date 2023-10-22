module Dufrio
  module V1
    class DufrioRepository < Base
      class << self
        def call
          response = api
        end
      end
    end
  end
end
  