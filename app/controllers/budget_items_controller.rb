class BudgetItemsController < ApplicationController

    def index
        entries = BudgetItem.all
        render json: entries, except: [:updated_at]
    end

    def show

    end

    def new
        binding.pry
    end

    def edit

    end

    def destroy

    end

    def update

    end
# {"name"=>"It's a Duck!", "amount"=>"231", "recurring"=>true, "expirationDate"=>"11/22/2020", "controller"=>"budget_items", "action"=>"create",
#  "budget_item"=>{"name"=>"It's a Duck!", "amount"=>"231", "recurring"=>true, "expirationDate"=>"11/22/2020"}} permitted: false>
    def create #I get repeated data here...
        entry = BudgetItem.create(budget_params)
        render json: entry
    end

    private

    def budget_params
        params.require(:budget_item).permit(:name, :description, :amount, :recurring, :expirationDate, :user_id)
    end
end
