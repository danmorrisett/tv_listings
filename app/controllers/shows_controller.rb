class ShowsController < ApplicationController

  def index
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to show_path(@show), notice: "#{@show.name} Successfully Added"
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to show_path(@show), notice: "#{@show.name} Successfully Updated"
    end
  end




  private

  def show_params
    params.require(:show).permit(:name)
  end

end
