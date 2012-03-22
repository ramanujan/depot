class StaticPagesController < ApplicationController
  def home
    @title=t("home")
  end

  def about
    @title=t("about")
  end

  def contact
    @title=t("contact")
  end
  
  def heroku_db_reset
    
    @output = `rake db:reset`
    
  end

 def heroku_db_migrate
   @output = `rake db:migrate`
 end

end
