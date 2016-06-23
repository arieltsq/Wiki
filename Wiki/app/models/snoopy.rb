class Snoopy < ApplicationRecord
  def to_param
    #function that rail converts an object to url
    char_name
  end
end
