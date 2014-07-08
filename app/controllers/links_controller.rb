class LinksController < ApplicationController
  
  def show
    @link = Link.includes(:user).find(params[:id])
  end
  
  def new
    @link = Link.new
  
  end
  
  def create
    @link = Link.new(link_params) #using link_params w/ private method for rails 4
    
    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
  
  def link_params     # required for rails 4 instead of attr_accessible
    params.require(:link).permit(:url, :title)
  end
  
  
  
end
