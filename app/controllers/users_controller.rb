class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:updated_at]
    end
    
    def get
        # check out current user, send JSON of user's data
        debugger;
        
    end
end
