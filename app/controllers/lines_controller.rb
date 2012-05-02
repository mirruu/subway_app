class LinesController < ApplicationController
  
  def index
    @lines = MetroLine.all
    
    respond_to do |format|
      format.html 
      format.json {render :json => @lines}
    end
  end
  
  def new
    @line = MetroLine.new
  end
  
  def create
    MetroLine.create({ :name => params[:metro_line][:name], :frequency => params[:metro_line][:frequency] })
    
    redirect_to metro_lines_url
    
  end
  
  def edit
    @line = MetroLine.find_by_id(params[:id])
  end
  
  def update
    @line = MetroLine.find_by_id(params[:id])
    @line.name = params[:metro_line]["name"]
    @line.frequency = params[:metro_line]["frequency"]
    @line.save
    redirect_to metro_line_url(@line.id)
  end
  
  def show
    @line = MetroLine.find_by_id(params[:id])
    
  end
  
  def destroy
    @line = MetroLine.find_by_id(params[:id])
    @line.destroy
    redirect_to metro_lines_url
  end
  
end
  