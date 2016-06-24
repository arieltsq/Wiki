class StaticController < ApplicationController
before_action :show_all
  def about
    @page = params[:page]
  end

  def faq
    @answers = ["Snoopy’s siblings from the Daisy Hill Puppy Farm are:
* SPIKE
* BELLE
* MARBLES
* OLAF
* ANDY",
"By the wishes of Mr. Schulz’s family, no new strips are – nor ever will be – drawn and published. There are new animated specials in development, but the story lines are based entirely on themes and dialogue from the strip’s history. The strips still published in your daily newspaper and on our gocomics.com website are actually reprints from the 50 year/17,897 strip history of PEANUTS. The strips’ relevance, charm, and timeliness today are perhaps the most powerful proof of their quality.",
"Actually between 1990 and 1991, he did.
He met Peggy Jean at summer camp. He was so enamored (and extremely nervous), that he introduced himself as Brownie Charles, the name by which she would know him until she moved away. Throughout their relationship, he was continually torn between Peggy Jean and his affection for the Little Red-Haired Girl."]

    i = params[:q].to_i
    @title =  params[:title]
  @current_question = @answers[i]
  end



end
