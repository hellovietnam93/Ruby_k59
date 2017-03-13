module ApplicationHelper
  # Trả về title đầy của trên từng trang
  def full_title page_title = ''
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end

