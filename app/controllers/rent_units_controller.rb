class RentUnitsController < ApplicationController
  before_action :set_rent_unit, only: [:show, :edit, :update, :destroy]

  # GET /rent_units
  # GET /rent_units.json
  def index
    @rent_units = RentUnit.all
  end

  # GET /rent_units/1
  # GET /rent_units/1.json
  def show
  end

  # GET /rent_units/new
  def new
    @rent_unit = RentUnit.new
  end

  # GET /rent_units/1/edit
  def edit
  end

  # POST /rent_units
  # POST /rent_units.json
  def create
    @rent_unit = RentUnit.new(rent_unit_params)

    respond_to do |format|
      if @rent_unit.save
        format.html { redirect_to @rent_unit, notice: 'Rent unit was successfully created.' }
        format.json { render :show, status: :created, location: @rent_unit }
      else
        format.html { render :new }
        format.json { render json: @rent_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_units/1
  # PATCH/PUT /rent_units/1.json
  def update
    respond_to do |format|
      if @rent_unit.update(rent_unit_params)
        format.html { redirect_to @rent_unit, notice: 'Rent unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_unit }
      else
        format.html { render :edit }
        format.json { render json: @rent_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_units/1
  # DELETE /rent_units/1.json
  def destroy
    @rent_unit.destroy
    respond_to do |format|
      format.html { redirect_to rent_units_url, notice: 'Rent unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_unit
      @rent_unit = RentUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_unit_params
      params.require(:rent_unit).permit(:name)
    end
end
