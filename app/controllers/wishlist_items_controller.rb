class WishlistItemsController < ApplicationController


    def index
        items = WishlistItem.all
        render json: items
    end

    def show

    end

    def new

    end

    def edit

    end

    def destroy

    end

    def update

    end

    def create

    end

    private

    def wishlist_params

    end
end
