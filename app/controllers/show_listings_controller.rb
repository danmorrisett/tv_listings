class ShowListingsController < ApplicationController

def index
end

def new
  @showlisting = ShowListing.new
end

def create
  @showlisting = ShowListing.new(params.require(:show_listing).permit(:date, :channel_id, :show_id))
  @showlisting.save
  redirect_to show_path(@showlisting.show), notice: "Show Listing Successfully Added"
end



end
