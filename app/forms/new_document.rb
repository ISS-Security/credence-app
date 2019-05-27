# frozen_string_literal: true

require_relative 'form_base'

module Credence
  module Form
    NewDocument = Dry::Validation.Params do
      configure do
        config.messages_file = File.join(__dir__, 'errors/new_document.yml')
      end

      required(:filename).filled(max_size?: 256, format?: FILENAME_REGEX)
      required(:relative_path).maybe(format?: PATH_REGEX)
      required(:description).maybe
      required(:content).filled
    end
  end
end
