module Spree
  module ProductsControllerDecorator
    def self.prepended(base)
      base.respond_to :rss, only: :index
    end
  end
end

Spree::Admin::ProductsController.prepend Spree::ProductsControllerDecorator
