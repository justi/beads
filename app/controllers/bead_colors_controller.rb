class BeadColorsController < ApplicationController
  before_action :set_bead_color, only: [:show, :edit, :update, :destroy]

  # GET /bead_colors
  # GET /bead_colors.json
  def index
    @bead_colors = BeadColor.all
  end

  # GET /bead_colors/1
  # GET /bead_colors/1.json
  def show
  end

  # GET /bead_colors/new
  def new
    @bead_color = BeadColor.new
  end

  # GET /bead_colors/1/edit
  def edit
  end

  # POST /bead_colors
  # POST /bead_colors.json
  def create
    @bead_color = BeadColor.new(bead_color_params)

    respond_to do |format|
      if @bead_color.save
        format.html { redirect_to @bead_color, notice: 'Bead color was successfully created.' }
        format.json { render :show, status: :created, location: @bead_color }
      else
        format.html { render :new }
        format.json { render json: @bead_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bead_colors/1
  # PATCH/PUT /bead_colors/1.json
  def update
    respond_to do |format|
      if @bead_color.update(bead_color_params)
        format.html { redirect_to @bead_color, notice: 'Bead color was successfully updated.' }
        format.json { render :show, status: :ok, location: @bead_color }
      else
        format.html { render :edit }
        format.json { render json: @bead_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bead_colors/1
  # DELETE /bead_colors/1.json
  def destroy
    @bead_color.destroy
    respond_to do |format|
      format.html { redirect_to bead_colors_url, notice: 'Bead color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bead_color
      @bead_color = BeadColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bead_color_params
      params.fetch(:bead_color, {})
    end
end
