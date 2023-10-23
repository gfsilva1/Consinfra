module Poloar
  module V1
    class PoloarRepository < Base
      class << self
        def call
          response = api
        end
      end
    end
  end
end
  