class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  # GET /hotels
  # GET /hotels.json
  def index
    @q = Hotel.ransack(search_params)

    search_params.each_pair { |key, value|
      @key   = "#{key}"
      @value = "#{value}"
      break # 先頭の条件のみ
    }

    sql = @q.result.to_sql
    if params[:q]["s"] then
      sql = sql + " order by "+ params[:q]["s"]
      sql.gsub!("\"","")
    else
      sql = sql + " order by updated_at desc limit 10"
    end
    @hotels = Hotel.find_by_sql(sql)
    # if @hotels then
    #   @message = "お探しの民泊施設は見つかりませんでした"
    # end
    # @hotels = Hotel.all
    @comment = Comment.new
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    sql = """
       select a.*
             ,b.name1 prefecture_name1
             ,c.name1 city_name1
             ,d.name1 station_name1
             ,e.name1 airport_name1
         from hotels a left join prefectures b on a.prefecture_id = b.id
                       left join cities      c on a.city_id       = c.id
                       left join stations    d on a.station_id    = d.id
                       left join airports    e on a.airport_id    = e.id
        where a.id = @ID@
      """
    sql.gsub!("@ID@",params[:id])
    @hotel = Hotel.find_by_sql(sql)[0]

    sql = """
       select a.*
             ,b.name stay_unit_name
             ,c.name rent_unit_name
         from prices a left join stay_units b on a.stay_unit_id = b.id
                       left join rent_units c on a.rent_unit_id = c.id
        where a.hotel_id = @ID@
        order by a.id
      """
    sql.gsub!("@ID@",params[:id])
    @prices = Price.find_by_sql(sql)

    @comments = Comment.where(hotel_id: params[:id])

    @comment = Comment.new

    # sql = """
    #    select a.*
    #      from images a
    #     where a.hotel_id = @ID@
    #     order by a.id
    #   """
    # sql.gsub!("@ID@",params[:id])
    # @images = Image.find_by_sql(sql)

  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # GET /hotels/1/edit
  def edit
    # Key認証
    if @hotel.key != params[:key] then
      redirect_to "/"
    end
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(hotel_params)
    require 'securerandom'
    key = SecureRandom.hex(4)
    @hotel.key = key

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to new_price_path, notice: 'Hotel was successfully created.',flash: {hotel_id: @hotel.id, hotel_key: @hotel.key} }
        format.json { render :new, status: :created, location: @hotel }
        # format.html { redirect_to @hotel, notice: 'Hotel was successfully created.' }
        # format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to new_price_path, notice: 'Hotel was successfully updated.',flash: {hotel_id: @hotel.id, hotel_key: @hotel.key} }
        format.json { render :new, status: :created, location: @hotel }
        # format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
        # format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to hotels_url, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:key, :name1, :name2, :name3, :map, :address, :tel, :mail, :url, :about1, :about2, :about3, :about4, :about5, :prefecture_id, :city_id, :station_id, :airport_id, :publish_flg, :stop_flg)
    end

    def search_params
      params.require(:q).permit(:id_eq, :name1_cont, :prefecture_id_eq, :city_id_eq, :station_id_eq, :airport_id_eq, :updated_at_lt)
    end
end
