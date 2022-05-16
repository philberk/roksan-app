class PagesController < ApplicationController

  def about
  end

  def contact
    search = params[:member] # :member is used because the keyword in the form input was member.

    @members = ['phil', 'roksan', 'erdem', 'tup']

    if search.present?
      @members = @members.select { |name| name.downcase == search.downcase}
      end
  end
end
