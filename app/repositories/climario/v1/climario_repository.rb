module Climario
    module V1
      class ClimarioRepository < Base
        class << self
          def call
            response = api
          end
        end
      end
    end
  end
    