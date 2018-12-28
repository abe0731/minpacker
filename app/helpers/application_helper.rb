module ApplicationHelper
  def latest
    sql = """
            select *
                 ,(select money
                   from prices
                   where hotel_id = a.id
                   order by id asc
                   limit 1) money
             from hotels a
            order by updated_at desc
            limit 6
          """
    hotels = Hotel.find_by_sql(sql)
    html_text   = ''
    hotels.each do |hotel|
      html_text += render(partial: 'layouts/latest', locals: {hotel: hotel})
    end
    return raw(html_text)
  end

  def focus
    sql = """
           select *
             from hotels
            where id in (select hotel_id
                           from counts
                          order by comment desc
                          limit 6)
          """
    hotels = Hotel.find_by_sql(sql)
    html_text   = ''
    hotels.each do |hotel|
      html_text += render(partial: 'layouts/focus', locals: {hotel: hotel})
    end
    return raw(html_text)
  end

  def popular
    sql = """
           select *
             from hotels
            where id in (select hotel_id
                           from counts
                          order by access desc
                          limit 6)
          """
    hotels = Hotel.find_by_sql(sql)
    html_text   = ''
    hotels.each do |hotel|
      html_text += render(partial: 'layouts/popular', locals: {hotel: hotel})
    end
    return raw(html_text)
  end

  def cnv_dsp_star(star)
    case star
      when 1 then
        return "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='far fa-star fa-2x'></i>" +
               "<i class='far fa-star fa-2x'></i>" +
               "<i class='far fa-star fa-2x'></i>" +
               "<i class='far fa-star fa-2x'></i>"
      when 2 then
        return "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='far fa-star fa-2x'></i>" +
               "<i class='far fa-star fa-2x'></i>" +
               "<i class='far fa-star fa-2x'></i>"
      when 3 then
        return "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='far fa-star fa-2x'></i>" +
               "<i class='far fa-star fa-2x'></i>"
      when 4 then
        return "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='far fa-star fa-2x'></i>"
      when 5 then
        return "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>" +
               "<i class='fas fa-star fa-2x' style='color:#ffd600'></i>"
      else
        return "<span style='font-size:120%'>未評価</span>"
    end
  end

  def dsp_money(type,money)
    wrk = number_with_delimiter(money)
    case type
      when 1 then
        if !wrk.blank? then
          wrk = "￥" + wrk.to_s
        end
      when 2 then
        if !wrk.blank? then
          wrk = "概算金額 ￥" + wrk.to_s
        end
    end

    return wrk
  end

end
