class ProductTaxonsController < ApplicationController
  before_action :set_product_taxon, only: %i[ show edit update destroy ]

  # GET /product_taxons or /product_taxons.json
  def index
    @product_taxons = ProductTaxon.all
  end

  # GET /product_taxons/1 or /product_taxons/1.json
  def show
  end

  # GET /product_taxons/new
  def new
    @product_taxon = ProductTaxon.new
  end

  # GET /product_taxons/1/edit
  def edit
  end

  # POST /product_taxons or /product_taxons.json
  def create
    @product_taxon = ProductTaxon.new(product_taxon_params)

    respond_to do |format|
      if @product_taxon.save
        format.html { redirect_to @product_taxon, notice: "Product taxon was successfully created." }
        format.json { render :show, status: :created, location: @product_taxon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_taxon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_taxons/1 or /product_taxons/1.json
  def update
    respond_to do |format|
      if @product_taxon.update(product_taxon_params)
        format.html { redirect_to @product_taxon, notice: "Product taxon was successfully updated." }
        format.json { render :show, status: :ok, location: @product_taxon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_taxon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_taxons/1 or /product_taxons/1.json
  def destroy
    @product_taxon.destroy
    respond_to do |format|
      format.html { redirect_to product_taxons_url, notice: "Product taxon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_taxon
      @product_taxon = ProductTaxon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_taxon_params
      params.require(:product_taxon).permit(:product_id, :taxon_id)
    end
end
