require 'equalizer'
require 'twitter/base'

module Twitter
  class Identity < Twitter::Base
    include Equalizer.new(:id)
    # @return [Integer]
    attr_reader :id

    # Initializes a new object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing an :id key.
    # @return [Twitter::Identity]
    def initialize(attrs = {})
      raise ArgumentError, 'attrs nil' unless attrs

      attrs.fetch(:id)
      super
    end
  end
end
