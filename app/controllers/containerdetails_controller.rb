class ContainerdetailsController < ApplicationController
     # wrap_parameters format: []
     def index
      containerdetails = Containerdetail.all
      render json: containerdetails
    end
  
    def show
      containerdetail = Containerdetail.find_by(id: params[:id])
      if containerdetail
        render json: containerdetail
      else
        render json: { error: "Container detail not found" }, status: :not_found
      end
    end
  
    def create
      containerdetail = Containerdetail.create!(containerdetail_params)
      render json: containerdetail, status: :created
    end
  
    def update
      containerdetail = Containerdetail.find_by(id: params[:id])
      if containerdetail
        containerdetail.update(containerdetail_params)
        render json: containerdetail
      else
        render json: { error: "Container detail not found" }, status: :not_found
      end
    end
  
    def destroy
      containerdetail = Containerdetail.find_by(id: params[:id])
      if containerdetail
        containerdetail.destroy
        head :no_content
      else
        render json: { error: "Container detail not found" }, status: :not_found
      end
    end
      private
      def containerdetail_params
        params.permit(:truck, :containerNumber, :loadedDate, :destination, :expiryDate, :customer, :droppingPoint, :thirdPartyContact)
      end
end
