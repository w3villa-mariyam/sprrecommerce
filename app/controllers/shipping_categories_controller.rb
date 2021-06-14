class ShippingCategoriesController < ApplicationController
  before_action :set_shipping_category, only: %i[ show edit update destroy ]

  # GET /shipping_categories or /shipping_categories.json
  def index
    @shipping_categories = ShippingCategory.all
  end

  # GET /shipping_categories/1 or /shipping_categories/1.json
  def show
  end

  # GET /shipping_categories/new
  def new
    @shipping_category = ShippingCategory.new
  end

  # GET /shipping_categories/1/edit
  def edit
  end

  # POST /shipping_categories or /shipping_categories.json
  def create
    @shipping_category = ShippingCategory.new(shipping_category_params)

    respond_to do |format|
      if @shipping_category.save
        format.html { redirect_to @shipping_category, notice: "Shipping category was successfully created." }
        format.json { render :show, status: :created, location: @shipping_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipping_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_categories/1 or /shipping_categories/1.json
  def update
    respond_to do |format|
      if @shipping_category.update(shipping_category_params)
        format.html { redirect_to @shipping_category, notice: "Shipping category was successfully updated." }
        format.json { render :show, status: :ok, location: @shipping_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipping_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_categories/1 or /shipping_categories/1.json
  def destroy
    @shipping_category.destroy
    respond_to do |format|
      format.html { redirect_to shipping_categories_url, notice: "Shipping category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_category
      @shipping_category = ShippingCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipping_category_params
      params.require(:shipping_category).permit(:name)
    end
end
