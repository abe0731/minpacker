class StayUnitsController < ApplicationController
  before_action :set_stay_unit, only: [:show, :edit, :update, :destroy]

  # GET /stay_units
  # GET /stay_units.json
  def index
    @stay_units = StayUnit.all
  end

  # GET /stay_units/1
  # GET /stay_units/1.json
  def show
  end

  # GET /stay_units/new
  def new
    @stay_unit = StayUnit.new
  end

  # GET /stay_units/1/edit
  def edit
  end

  # POST /stay_units
  # POST /stay_units.json
  def create
    @stay_unit = StayUnit.new(stay_unit_params)

    respond_to do |format|
      if @stay_unit.save
        format.html { redirect_to @stay_unit, notice: 'Stay unit was successfully created.' }
        format.json { render :show, status: :created, location: @stay_unit }
      else
        format.html { render :new }
        format.json { render json: @stay_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stay_units/1
  # PATCH/PUT /stay_units/1.json
  def update
    respond_to do |format|
      if @stay_unit.update(stay_unit_params)
        format.html { redirect_to @stay_unit, notice: 'Stay unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @stay_unit }
      else
        format.html { render :edit }
        format.json { render json: @stay_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stay_units/1
  # DELETE /stay_units/1.json
  def destroy
    @stay_unit.destroy
    respond_to do |format|
      format.html { redirect_to stay_units_url, notice: 'Stay unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stay_unit
      @stay_unit = StayUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stay_unit_params
      params.require(:stay_unit).permit(:name)
    end
end
