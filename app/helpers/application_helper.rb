module ApplicationHelper
  def current_date_class(date)
    "current-date" if date == Date.current
  end
end
