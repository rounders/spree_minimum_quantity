module SpreeMinimumQuantity
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Configures your Rails application for use with spree_minimum_quantity"

      def copy_migrations
        directory "db"
      end
    end
  end
end
