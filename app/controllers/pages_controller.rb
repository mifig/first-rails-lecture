class PagesController < ApplicationController

  def about
  end

  def contact
    @contacts = ["Tomás", "Maria", "António", "João", "Pedro"]
    
    if params["member"]
      @contacts = @contacts.select { |contact| contact.start_with?(params["member"]) }
    end
  end

  def home
  end
end
