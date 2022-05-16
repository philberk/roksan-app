class PagesController < ApplicationController

  def home
    @time = Date.today
  end

  def about
  end

  def contact
    @members = ['phil', 'roksan', 'erdem', 'tup']
  end

end
