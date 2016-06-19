class SnoopyController < ApplicationController
  def index
  end
#
#   @questions = ['what is ariel?', "what can ariel do?", "where can ariel be found?"]
#
#   i = params[:q].to_i
#   @title =  params[:title]
# @current_question = @questions[i]

  def characters
    @characters = params[:id]
    
    # @title = ["Bestfriend: Wood Stock", "Bestfriend: Linus"]
    if @characters == "charlie"

      # render "characters"
      @current_title = "Bestfriend: Wood Stock"
      @current_image = "snoopy.jpg"

    elsif @characters == "sue"
      # render "characters2"
        @current_title = "Bestfriend: Linus"
        @current_image = "sue.jpg"

    else
      render "index"
end

  end
end
