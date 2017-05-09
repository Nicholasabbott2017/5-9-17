class SwingsController < ApplicationController
 def index
   @swings = Swing.all
  end
   def new
    @swing = Swing.new
  end
  
 # def show
   # @swing = Swing.find(params[:id])
 # end
  def create
    @swing = Swing.new(params[:product])
    if @swing.save
      flash[:notice] = "Successfully created swing."
      redirect_to @swing
    else
      render :action => 'new'
    end
  end
  
  def edit
    @swing = Swing.find(params[:id])
  end
  
  def update
    @swing = Swing.find(params[:id])
    if @swing.update_attributes(params[:product])
      flash[:notice] = "Successfully updated swing."
      redirect_to @swing
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @swing = Swing.find(params[:id])
    @swing.destroy
    flash[:notice] = "Successfully destroyed swing."
    redirect_to swings_url
  end
end
