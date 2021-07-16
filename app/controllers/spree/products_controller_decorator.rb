module Spree
  module ProductsControllerDecorator
    def self.prepended(base)
      base.respond_to :rss, only: :index
    end
  end
end

Spree::ProductsController.prepend Spree::ProductsControllerDecorator if defined?(Spree::ProductsController) && !Spree::ProductsController.include?(Spree::ProductsControllerDecorator)
