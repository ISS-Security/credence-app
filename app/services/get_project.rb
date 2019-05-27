# frozen_string_literal: true

require 'http'

# Returns all projects belonging to an account
class GetProject
  def initialize(config)
    @config = config
  end

  def call(current_account, proj_id)
    response = HTTP.auth("Bearer #{current_account.auth_token}")
                   .get("#{@config.API_URL}/projects/#{proj_id}")

    response.code == 200 ? response.parse['data'] : nil
  end
end
