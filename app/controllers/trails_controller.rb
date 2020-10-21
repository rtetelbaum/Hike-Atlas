class TrailsController < ApplicationController

    def index
        @city = params[:city]
        @state = params[:state]
        @max_distance = params[:max_distance]
				@max_results = params[:max_results]
				if @city && @state && @max_distance && @max_results
					@api_data = Trail.trail_search(@city, @state, @max_distance, @max_results)
				end
    end

    def show
    end

    private

    def trail_params
        params.require(:trail).permit(:api_id, :name, :summary, :difficulty, :stars, :location, :img_sq_small, :img_medium, :length, :ascent, :high, :condition_status, :condition_details, :condition_date, :url)
		end
		
end
