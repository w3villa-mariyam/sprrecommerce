class ProductOptionTypesController < ApplicationController
  before_action :set_product_option_type, only: %i[ show edit update destroy ]

  # GET /product_option_types or /product_option_types.json
  def index
    @product_option_types = ProductOptionType.all
  end

  # GET /product_option_types/1 or /product_option_types/1.json
  def show
  end

  # GET /product_option_types/new
  def new
    @product_option_type = ProductOptionType.new
  end

  # GET /product_option_types/1/edit
  def edit
  end

  # POST /product_option_types or /product_option_types.json
  def create
    @product_option_type = ProductOptionType.new(product_option_type_params)

    respond_to do |format|
      if @product_option_type.save
        format.html { redirect_to @product_option_type, notice: "Product option type was successfully created." }
        format.json { render :show, status: :created, location: @product_option_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_option_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_option_types/1 or /product_option_types/1.json
  def update
    respond_to do |format|
      if @product_option_type.update(product_option_type_params)
        format.html { redirect_to @product_option_type, notice: "Product option type was successfully updated." }
        format.json { render :show, status: :ok, location: @product_option_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_option_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_option_types/1 or /product_option_types/1.json
  def destroy
    @product_option_type.destroy
    respond_to do |format|
      format.html { redirect_to product_option_types_url, notice: "Product option type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_option_type
      @product_option_type = ProductOptionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_option_type_params
      params.require(:product_option_type).permit(:option_type_id, :product)
    end
end
