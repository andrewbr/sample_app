require "action_dispatch/testing/assertions/routing"

module RSpec::Rails
  module RoutingExampleGroup
    extend ActiveSupport::Concern

    include ActionDispatch::Assertions::RoutingAssertions
    include RSpec::Rails::RailsExampleGroup
    include RSpec::Rails::Matchers::RoutingMatchers

    module InstanceMethods
      attr_reader :routes

      private

      def method_missing(m, *args, &block)
        routes.url_helpers.respond_to?(m) ? routes.url_helpers.send(m, *args) : super
      end
    end

    included do
      metadata[:type] = :routing

      before do
        @routes = ::Rails.application.routes
      end
    end
  end
end
