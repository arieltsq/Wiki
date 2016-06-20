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
      @current_title = "FIRST APPEARANCE: October 2, 1950"
      @current_image = "charlie.png"
      @current_desc ="Good ol’ Charlie Brown” is the lovable loser in the zig-zag t-shirt—the kid who never gives up (even though he almost never wins). He manages the world’s worst baseball team…yet shows up for every game. He can’t muster the courage to talk to the Little Red-Haired girl…yet keeps hoping. Even though he gets grief from his friends, his kite-eating tree, even his own dog, Charlie Brown remains the stalwart hero."

@dyknow = " DID YOU KNOW: Charlie Brown's dad is a barber just like Charles Schulz's father was"


    elsif @characters == "sally"
      # render "characters2"
        @current_title = "FIRST APPEARANCE: August 23, 1959"
        @current_image = "sally.png"
        @current_desc = "Charlie Brown’s little sister believes the world owes her an explanation. Why does she have to go to school? Why doesn’t Linus, her Sweet Babboo, love her? And what’s the capital of Venezuela? Sally is always on the hunt for answers—and when she doesn’t get them, she comes up with a whole new philosophy: “Who cares?”"

        @dyknow = 'DID YOU KNOW: For 6 months, Sally experienced amblyopia ("lazy eye") and wore an eye patch.'

      elsif @characters == "snoopy"

        @current_title = "FIRST APPEARANCE: October 4, 1950"
        @current_image = "snoopy.png"
        @current_desc = "The wildly imaginative, supremely confident, world-famous beagle is a canine master of disguise. As Joe Cool, he’s aloof, unflappable, above the fray, the hip dog we’d all like to be. As the World War I Flying Ace, he engages in aerial combat with the notorious Red Baron. While pondering life from the top of his doghouse, he writes the great American novel, travels to the moon, and plots revenge on the cat next door."
          @dyknow = 'DID YOU KNOW: Snoopy reads "War and Peace" at the rate of one word a day.
        else'
        elsif @characters == "woodstock"

    
          @current_title = "FIRST APPEARANCE: April 4, 1967"
          @current_image = "woodstock.png"
          @current_desc = "  The fluttering, sometimes sputtering, little yellow bird is Snoopy’s sidekick, whether it’s as faithful mechanic to the World War I Flying Ace, stalwart secretary to the Head Beagle, or root beer drinking buddy. Chirping in a language only Snoopy understands, Woodstock and his feathered friends are never far from Snoopy’s doghouse."
            @dyknow = '  DID YOU KNOW: Woodstock was first seen in the strip in 1967 but was named in 1970 after the summer music festival.'

            else
      render "index"
end

  end
end
