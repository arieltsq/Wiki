class SnoopiesController < ApplicationController


  def new
    @snoopy = Snoopy.new
  end
  def create
    # snoopy_params = params.require(:snoopy).permit(:char_name,:char_found,:char_desc,:char_dyknow)
    uploaded_io = params[:snoopy][:char_image]
              File.open(Rails.root.join('app', 'assets','images', uploaded_io.original_filename), 'wb') do |file|
              file.write(uploaded_io.read)
            end

            snoopy_params = params.require(:snoopy).permit(:char_name,:char_found,:char_image,:char_desc,:char_dyknow)

    @snoopy = Snoopy.new(snoopy_params)
    if @snoopy.save

      # redirect_to "/snoopy/#{@snoopy.char_name}", notice: "Character was successfully created."
     redirect_to @snoopy, notice: 'is this the error?.'

    else
      render:new
    end
  end
  #
  #   @questions = ['what is ariel?', "what can ariel do?", "where can ariel be found?"]
  #
  #   i = params[:q].to_i
  #   @title =  params[:title]
  # @current_question = @questions[i]

  # this is the show page
  def show
    @snoopy = Snoopy.find_by(char_name: params[:id])
    redirect_to snoopies_path if @snoopy.blank?

  end

def edit
  @snoopy = Snoopy.find_by(char_name: params[:id])
end

def update
  snoopy_params = params.require(:snoopy).permit(:char_name,:char_found,:char_image,:char_desc,:char_dyknow)
 # @customer = Customer.find(params[:id])
  @snoopy = Snoopy.find_by(char_name: params[:id])
  if  @snoopy = Snoopy.update(snoopy_params)
   redirect_to @snoopy, notice: 'Character was successfully updated.'
  else
    render :edit
  end
end

def destroy
  snoopy = Snoopy.find_by(char_name: params[:id])
  snoopy.destroy
  redirect_to @snoopy, notice: 'Character deleted.'

end
  def index
    # @characters = Character.where(char_name: params[:id]) unless params[:name].blank?
    # @characters.blank?
    #   @characters = Character.all
      # @snoopy = Snoopy.find_by(char_name: params[:id])
@snoopies = Snoopy.all
      # redirect_to snoopy_path if @character.blank?

    # @characters = params[:id]
    #
    # # @title = ["Bestfriend: Wood Stock", "Bestfriend: Linus"]
    # if @characters == "charlie"
    #   # render "characters"
    #   @current_title = "FIRST APPEARANCE: October 2, 1950"
    #   @current_image = "charlie.png"
    #   @current_desc ="Good ol’ Charlie Brown” is the lovable loser in the zig-zag t-shirt—the kid who never gives up (even though he almost never wins). He manages the world’s worst baseball team…yet shows up for every game. He can’t muster the courage to talk to the Little Red-Haired girl…yet keeps hoping. Even though he gets grief from his friends, his kite-eating tree, even his own dog, Charlie Brown remains the stalwart hero."
    #
    #   @dyknow = " DID YOU KNOW: Charlie Brown's dad is a barber just like Charles Schulz's father was"
    #
    # elsif @characters == "sally"
    #   # render "characters2"
    #   @current_title = "FIRST APPEARANCE: August 23, 1959"
    #   @current_image = "sally.png"
    #   @current_desc = "Charlie Brown’s little sister believes the world owes her an explanation. Why does she have to go to school? Why doesn’t Linus, her Sweet Babboo, love her? And what’s the capital of Venezuela? Sally is always on the hunt for answers—and when she doesn’t get them, she comes up with a whole new philosophy: “Who cares?”"
    #
    #   @dyknow = 'DID YOU KNOW: For 6 months, Sally experienced amblyopia ("lazy eye") and wore an eye patch.'
    #
    # elsif @characters == "snoopy"
    #
    #   @current_title = "FIRST APPEARANCE: October 4, 1950"
    #   @current_image = "snoopy.png"
    #   @current_desc = "The wildly imaginative, supremely confident, world-famous beagle is a canine master of disguise. As Joe Cool, he’s aloof, unflappable, above the fray, the hip dog we’d all like to be. As the World War I Flying Ace, he engages in aerial combat with the notorious Red Baron. While pondering life from the top of his doghouse, he writes the great American novel, travels to the moon, and plots revenge on the cat next door."
    #   @dyknow = 'DID YOU KNOW: Snoopy reads "War and Peace" at the rate of one word a day'
    # elsif @characters == "woodstock"
    #
    #
    #   @current_title = "FIRST APPEARANCE: April 4, 1967"
    #   @current_image = "woodstock.png"
    #   @current_desc = "  The fluttering, sometimes sputtering, little yellow bird is Snoopy’s sidekick, whether it’s as faithful mechanic to the World War I Flying Ace, stalwart secretary to the Head Beagle, or root beer drinking buddy. Chirping in a language only Snoopy understands, Woodstock and his feathered friends are never far from Snoopy’s doghouse."
    #   @dyknow = '  DID YOU KNOW: Woodstock was first seen in the strip in 1967 but was named in 1970 after the summer music festival.'
    #
    # else
    #   render "index"
    # end

  end
end
