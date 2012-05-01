module Doorkeeper
  module OAuth
    class Token
      class Expiration
        attr_accessor :request, :configuration

        def initialize(request, configuration = Doorkeeper.configuration)
          @request, @configuration = request, configuration
        end

        def time_for(client, resource_owner, scopes)
          configuration.access_token_expires_in
        end
      end
    end
  end
end
