class BeadTypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  def index
    @bead_types = BeadType.all
  end

  def show
  end

  def new
    @bead_type = BeadType.new
  end

  def edit
  end

  def create
    @bead_type = BeadType.new(type_params)

    respond_to do |format|
      if @bead_type.save
        format.html { redirect_to @bead_type, notice: 'Type was successfully created.' }
        format.json { render :show, status: :created, location: @bead_type }
      else
        format.html { render :new }
        format.json { render json: @bead_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bead_type.update(type_params)
        format.html { redirect_to @bead_type, notice: 'Type was successfully updated.' }
        format.json { render :show, status: :ok, location: @bead_type }
      else
        format.html { render :edit }
        format.json { render json: @bead_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bead_type.destroy
    respond_to do |format|
      format.html { redirect_to types_url, notice: 'Type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @bead_type = BeadType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_params
      params.require(:bead_type).permit(:name)
    end
end
