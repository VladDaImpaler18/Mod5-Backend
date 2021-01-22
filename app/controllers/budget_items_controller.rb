class BudgetItemsController < ApplicationController

    def index
        entries = BudgetItem.all
        render json: entries, except: [:updated_at]
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

    def budget_params

    end
end
