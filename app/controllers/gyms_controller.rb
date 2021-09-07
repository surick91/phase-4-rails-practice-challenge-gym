class GymsController < ApplicationController
rescue_from ActiveRecird::RecordInvalid, with: 
:render_not_found

    def show
        gym =Gym.find(params[:id])
        render json: gym 
    end

    private
    
    def render_not_found_response(exception)
        render json:{error:exception.record.errors.full_messag},status: :render_not_found
    
    end
end

