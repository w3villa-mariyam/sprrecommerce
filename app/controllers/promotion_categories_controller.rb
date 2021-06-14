class PromotionCategoriesController < ApplicationController
  before_action :set_promotion_category, only: %i[ show edit update destroy ]

  # GET /promotion_categories or /promotion_categories.json
  def index
    @promotion_categories = PromotionCategory.all
  end

  # GET /promotion_categories/1 or /promotion_categories/1.json
  def show
  end

  # GET /promotion_categories/new
  def new
    @promotion_category = PromotionCategory.new
  end

  # GET /promotion_categories/1/edit
  def edit
  end

  # POST /promotion_categories or /promotion_categories.json
  def create
    @promotion_category = PromotionCategory.new(promotion_category_params)

    respond_to do |format|
      if @promotion_category.save
        format.html { redirect_to @promotion_category, notice: "Promotion category was successfully created." }
        format.json { render :show, status: :created, location: @promotion_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promotion_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotion_categories/1 or /promotion_categories/1.json
  def update
    respond_to do |format|
      if @promotion_category.update(promotion_category_params)
        format.html { redirect_to @promotion_category, notice: "Promotion category was successfully updated." }
        format.json { render :show, status: :ok, location: @promotion_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promotion_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_categories/1 or /promotion_categories/1.json
  def destroy
    @promotion_category.destroy
    respond_to do |format|
      format.html { redirect_to promotion_categories_url, notice: "Promotion category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion_category
      @promotion_category = PromotionCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promotion_category_params
      params.require(:promotion_category).permit(:name, :code)
    end
end
