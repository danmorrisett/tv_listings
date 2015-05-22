class ChannelsController < ApplicationController

  def index
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    if @channel.save
      redirect_to root_path, notice: "#{@channel.name} Successfully Added"
    end
  end

  private

  def channel_params
    params.require(:channel).permit(:name)
  end

end
