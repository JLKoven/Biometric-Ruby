module DateHelper

  def display_date(entity)
    entity.date.strftime("%b-%d-%Y")
  end

end
