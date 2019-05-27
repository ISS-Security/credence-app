# frozen_string_literal: true

require 'http'

# Returns all projects belonging to an account
class GetDocument
  def initialize(config)
    @config = config
  end

  def call(user, doc_id)
    response = HTTP.auth("Bearer #{user.auth_token}")
                   .get("#{@config.API_URL}/documents/#{doc_id}")
    response.code == 200 ? response.parse['data'] : nil
  end
end
