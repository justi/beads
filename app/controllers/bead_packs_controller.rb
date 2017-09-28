class BeadPacksController < ApplicationController
  before_action :set_bead_pack, only: [:show, :edit, :update, :destroy]

  # GET /bead_packs
  # GET /bead_packs.json
  def index
    @bead_packs = BeadPack.all
  end

  # GET /bead_packs/1
  # GET /bead_packs/1.json
  def show
  end

  # GET /bead_packs/new
  def new
    @bead_pack = BeadPack.new
  end

  # GET /bead_packs/1/edit
  def edit
  end

  # POST /bead_packs
  # POST /bead_packs.json
  def create
    @bead_pack = BeadPack.new(bead_pack_params)
    respond_to do |format|
      if @bead_pack.save
        format.html { redirect_to @bead_pack, notice: 'Bead pack was successfully created.' }
        format.json { render :show, status: :created, location: @bead_pack }
      else
        format.html { render :new }
        format.json { render json: @bead_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bead_packs/1
  # PATCH/PUT /bead_packs/1.json
  def update
    respond_to do |format|
      if @bead_pack.update(bead_pack_params)
        format.html { redirect_to @bead_pack, notice: 'Bead pack was successfully updated.' }
        format.json { render :show, status: :ok, location: @bead_pack }
      else
        format.html { render :edit }
        format.json { render json: @bead_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bead_packs/1
  # DELETE /bead_packs/1.json
  def destroy
    @bead_pack.destroy
    respond_to do |format|
      format.html { redirect_to bead_packs_url, notice: 'Bead pack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bead_pack
      @bead_pack = BeadPack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bead_pack_params
      params.require(:bead_pack).permit(:count, :bead_type_id, :size_id, :name, :new_type_name, :new_size_name, :picture)
    end
end
