class TaxRatesController < ApplicationController
  before_action :set_tax_rate, only: %i[ show edit update destroy ]

  # GET /tax_rates or /tax_rates.json
  def index
    @tax_rates = TaxRate.all
  end

  # GET /tax_rates/1 or /tax_rates/1.json
  def show
  end

  # GET /tax_rates/new
  def new
    @tax_rate = TaxRate.new
  end

  # GET /tax_rates/1/edit
  def edit
  end

  # POST /tax_rates or /tax_rates.json
  def create
    @tax_rate = TaxRate.new(tax_rate_params)

    respond_to do |format|
      if @tax_rate.save
        format.html { redirect_to @tax_rate, notice: "Tax rate was successfully created." }
        format.json { render :show, status: :created, location: @tax_rate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tax_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tax_rates/1 or /tax_rates/1.json
  def update
    respond_to do |format|
      if @tax_rate.update(tax_rate_params)
        format.html { redirect_to @tax_rate, notice: "Tax rate was successfully updated." }
        format.json { render :show, status: :ok, location: @tax_rate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tax_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tax_rates/1 or /tax_rates/1.json
  def destroy
    @tax_rate.destroy
    respond_to do |format|
      format.html { redirect_to tax_rates_url, notice: "Tax rate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_rate
      @tax_rate = TaxRate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tax_rate_params
      params.require(:tax_rate).permit(:name, :amount, :tax_category_id, :zone)
    end
end
