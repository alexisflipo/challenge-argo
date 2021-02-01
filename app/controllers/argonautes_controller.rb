class ArgonautesController < ApplicationController
  def index
    @argonautes = Argonaute.all
    @argonaute = Argonaute.new
  end
  def create
    @argonaute = Argonaute.new(argonaute_params)
    if @argonaute.save
      redirect_to root_path
      flash[:notice] = "The argonaute has been created successfully"
    else 
      render :index
      flash[:alert] = "The argonaute couldn't be created"
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name)
  end
end
