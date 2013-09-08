module Kribruby
  class Config

    class << self

      # Set kribruby default options
      # @return [Hash] options
      #
      #   * **:format**     [String] - Date format for API requests
      #   * **:secret**     [String] - Secret for Kribrum API
      #   * **:object_id**  [String] - Object for Kribrum API
      def defaults
        @defaults ||= {
          date_format: '%F',
          secret:     ENV["KRBRB_SECRET"],
          object_id:  ENV["KRBRB_OBJECT_ID"]
        }
      end

      # Merge options
      #
      # @param [Hash] settings xendoola options to override
      # @return [Hash] options hash
      def setup!(settings = {})
        @configuration = defaults.merge(settings)
      end

      # Return option value
      #
      # @param [Symbol] key options hash key
      # @return [String] value options hash key value
      def [](key)
        (@configuration ||= setup!)[key]
      end
    end
  end
end
