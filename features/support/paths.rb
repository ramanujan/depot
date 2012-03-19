module NavigationHelpers
  
  def path_to page_name
  
    case page_name
      when /home\s?page/ then '/'
    end
  
  end

end

World(NavigationHelpers)