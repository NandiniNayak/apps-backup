class SumnesController < ApplicationController
  before_action :set_sumne, only: [:show, :edit, :update, :destroy]

  # GET /sumnes
  # GET /sumnes.json
  def index
    @sumnes = Sumne.all
  end

  # GET /sumnes/1
  # GET /sumnes/1.json
  def show
  end

  # GET /sumnes/new
  def new
    @sumne = Sumne.new
  end

  # GET /sumnes/1/edit
  def edit
  end

  # POST /sumnes
  # POST /sumnes.json
  def create
    @sumne = Sumne.new(sumne_params)

    respond_to do |format|
      if @sumne.save
        format.html { redirect_to @sumne, notice: 'Sumne was successfully created.' }
        format.json { render :show, status: :created, location: @sumne }
      else
        format.html { render :new }
        format.json { render json: @sumne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sumnes/1
  # PATCH/PUT /sumnes/1.json
  def update
    respond_to do |format|
      if @sumne.update(sumne_params)
        format.html { redirect_to @sumne, notice: 'Sumne was successfully updated.' }
        format.json { render :show, status: :ok, location: @sumne }
      else
        format.html { render :edit }
        format.json { render json: @sumne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sumnes/1
  # DELETE /sumnes/1.json
  def destroy
    @sumne.destroy
    respond_to do |format|
      format.html { redirect_to sumnes_url, notice: 'Sumne was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sumne
      @sumne = Sumne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sumne_params
      params.require(:sumne).permit(:name, :price, :ingredients,:picture)
    end
end
