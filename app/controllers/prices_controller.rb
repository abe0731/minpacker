class PricesController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy]
  # KEY認証
  before_action do |controller|
    hotel_id  = params[:hotel_id]
    hotel_key = params[:hotel_key]
    @hotel = Hotel.where(id: hotel_id, key: hotel_key).take
    if @hotel.blank?
      redirect_to '/404'
    end
  end

  # GET /prices
  # GET /prices.json
  def index
    @prices = Price.all
  end

  # GET /prices/1
  # GET /prices/1.json
  def show
  end

  # GET /prices/new
  def new
    @price  = Price.new
    if !params[:hotel_id].blank?
      sql = """
         select a.*
               ,b.name stay_unit_name
               ,c.name rent_unit_name
           from prices a left join stay_units b on a.stay_unit_id = b.id
                         left join rent_units c on a.rent_unit_id = c.id
          where a.hotel_id = @ID@
          order by a.id
        """
      sql.gsub!("@ID@",params[:hotel_id])
      @prices = Price.find_by_sql(sql)
    end
  end

  # GET /prices/1/edit
  def edit
  end

  # POST /prices
  # POST /prices.json
  def create
    @price = Price.new(price_params)

    respond_to do |format|
      if params[:skip] then
        format.html { redirect_to new_image_path, flash: {hotel_id: @price.hotel_id}}
      end

      if @price.save
        format.html { redirect_to new_image_path, flash: {hotel_id: @price.hotel_id}}
        # format.html { redirect_to @price, notice: 'Price was successfully created.' }
        # format.json { render :show, status: :created, location: @price }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /prices/1
  # PATCH/PUT /prices/1.json
  def update
    hotel_id  = @price.hotel_id
    hotel_key = params[:hotel_key]
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to new_price_path + "?hotel_id=" + hotel_id.to_s + "&hotel_key=" + hotel_key.to_s}
        # format.html { redirect_to @price, notice: 'Price was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /prices/1
  # DELETE /prices/1.json
  def destroy
    hotel_id  = @price.hotel_id
    hotel_key = params[:hotel_key]
    @price.destroy
    respond_to do |format|
      format.html { redirect_to new_price_path + "?hotel_id=" + hotel_id.to_s + "&hotel_key=" + hotel_key.to_s}
      # format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:price).permit(:hotel_id, :title, :quantity_rent, :rent_unit_id, :quantity_stay, :stay_unit_id, :money)
    end
end
