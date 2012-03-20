class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end
  
  def heroku_db_reset
    
    @output = `rake db:reset`
    
  end

 def heroku_db_migrate
   @output = `rake db:migrate`
 end

end
