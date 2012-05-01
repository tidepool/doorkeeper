class Doorkeeper::OAuth::Token
  class CustomExpiration < Expiration
    def time_for(client, resource_owner, scopes)
      return nil if scopes.include?(:offline)
      configuration.access_token_expires_in
    end
  end
end
