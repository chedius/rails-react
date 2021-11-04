class Api::V1::WearsController < ApplicationController
    before_action :set_wear, only: [:show, :edit, :update, :destroy]
  
    # GET /wears
    # GET /wears.json
    def index
      @wears = Wear.all.order(brand: :asc)
      render json: @wears
    end
  
    # GET /wears/1
    # GET /wears/1.json
    def show
      if @wear
        render json: @wear
      else
        render json: @wear.errors
      end
    end
  
    # GET /wears/new
    def new
      @wear = Wear.new
    end
  
    # GET /wears/1/edit
    def edit
    end
  
    # POST /wears
    # POST /wears.json
    def create
      @wear = Wear.new(Wear_params)
  
  
      if @wear.save
        render json: @wear
      else
        render json: @wear.errors
      end
    end
  
    # PATCH/PUT /wears/1
    # PATCH/PUT /wears/1.json
    def update
    end
  
    # DELETE /wears/1
    # DELETE /wears/1.json
    def destroy
      @wear.destroy
  
      render json: { notice: 'Wear was successfully removed.' }
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Wear
        @wear = Wear.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def Wear_params
        params.permit(:brand, :element, :country, :quantity)
      end
  end