module ApplicationHelper
  # all helpers accessible from everywhere.
  # base_title is local, @title is global...
  # as it is defined in the PagesController
  # Helper catches errors in @title def
  # for seo and site nav
  def title
    base_title = "Micasa Exchange"
    if @title.nil?
      base_title
    else
      "#{base_title} - #{@title} - Swap Online"
    end
  end
end
