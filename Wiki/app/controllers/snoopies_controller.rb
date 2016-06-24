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
     redirect_to @snoopy, notice: 'characters has been created'

    else
      render:new
    end
  end

  def show

   @snoopy = Snoopy.find_by(char_name: params[:id])
    redirect_to snoopies_path if @snoopy.blank?

  end

def edit
   @snoopy = Snoopy.find_by(char_name: params[:id])

end

def update
  snoopy_params = params.require(:snoopy).permit(:char_name,:char_found,:char_image,:char_desc,:char_dyknow)
  @snoopy = Snoopy.find_by(char_name: params[:id])
  if  @snoopy.update(snoopy_params)
   redirect_to snoopies_path, notice: 'Character was successfully updated.'
  else
    render :edit
  end
end

def destroy
  snoopy = Snoopy.find_by(char_name: params[:id])
  snoopy.destroy
  redirect_to snoopies_path, notice: 'Character deleted.'

end
  def index

@snoopies = Snoopy.order('snoopies.char_name ASC').all

  end
end
