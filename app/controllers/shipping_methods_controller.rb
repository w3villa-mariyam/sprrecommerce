class ShippingMethodsController < ApplicationController
  before_action :set_shipping_method, only: %i[ show edit update destroy ]

  # GET /shipping_methods or /shipping_methods.json
  def index
    @shipping_methods = ShippingMethod.all
  end

  # GET /shipping_methods/1 or /shipping_methods/1.json
  def show
  end

  # GET /shipping_methods/new
  def new
    @shipping_method = ShippingMethod.new
  end

  # GET /shipping_methods/1/edit
  def edit
  end

  # POST /shipping_methods or /shipping_methods.json
  def create
    @shipping_method = ShippingMethod.new(shipping_method_params)

    respond_to do |format|
      if @shipping_method.save
        format.html { redirect_to @shipping_method, notice: "Shipping method was successfully created." }
        format.json { render :show, status: :created, location: @shipping_method }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipping_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_methods/1 or /shipping_methods/1.json
  def update
    respond_to do |format|
      if @shipping_method.update(shipping_method_params)
        format.html { redirect_to @shipping_method, notice: "Shipping method was successfully updated." }
        format.json { render :show, status: :ok, location: @shipping_method }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipping_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_methods/1 or /shipping_methods/1.json
  def destroy
    @shipping_method.destroy
    respond_to do |format|
      format.html { redirect_to shipping_methods_url, notice: "Shipping method was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_method
      @shipping_method = ShippingMethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipping_method_params
      params.require(:shipping_method).permit(:name, :zone_id, :shipping_category_id, :tax_category_id)
    end
end
