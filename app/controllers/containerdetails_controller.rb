class ContainerdetailsController < ApplicationController
     # wrap_parameters format: []
     def index
        containerdetails=Containerdetail.all
        render json: containerdetails
      end
      def show
        containerdetail = Containerdetail.find_by(id:params[:id])
        render json: containerdetail
      end
      # def destroy
      #   @containerdetail=containerdetail.find_by(id:params[:id])
      #   @containerdetail.destroy
      #   head :no_content
      # end

      def destroy
        @containerdetail = Containerdetail.find(params[:id])
        if @containerdetail.present?
          @containerdetail.destroy
          head :no_content
          
          
        end
        
    end
    
      def create
        containerdetail=Containerdetail.create!(containerdetail_params)
        render json: containerdetail,status: :created
      end
      def update
        containerdetail = Containerdetail.find_by(id: params[:id])
          if containerdetail
            containerdetail.update(containerdetail_params)
            render json: containerdetail,status: :created
          else
            render json: { error: "containerdetail not found"}, status: :not_found
          end
       end
      private
      def containerdetail_params
        params.permit(:truck, :containerNumber, :loadedDate, :destination, :expiryDate, :customer, :droppingPoint, :thirdPartyContact)
      end
end
