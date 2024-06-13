class ThirdPartiesController < ApplicationController
    def index
        @third_parties = ThirdParty.all
        render json: @third_parties
      end
    
      def create
        @third_party = ThirdParty.new(third_party_params)
        if @third_party.save
          render json: @third_party, status: :created
        else
          render json: @third_party.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @thirdparty = ThirdParty.find(params[:id])
        if @thirdparty.present?
          @thirdparty.destroy
          head :no_content 
        end
      end
    
      private
    
      def third_party_params
        params.require(:third_party).permit(:truck, :container_number, :loaded_date, :destination, :customer, :dropping_point, :third_party_contact, :initialTruck)
      end
end
