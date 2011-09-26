class SearchesController < ApplicationController

  def index
    @searches = Search.all
  end

  def show
    @search = Search.find(params[:id])
  end

  def new
    session[:search_params] ||= {}
    @search = Search.new(session[:search_params])
    @search.current_step = session[:search_step]
  end

  def create
    session[:search_params].deep_merge!(params[:search]) if params[:search]
    @search = Search.new(session[:search_params])
    @search.current_step = session[:search_step]
    if @search.valid?
      if params[:back_button]
        @search.previous_step
      elsif @search.last_step?
        @search.save if @search.all_valid?
      else
        @search.next_step
      end
      session[:search_step] = @search.current_step
    end
    if @search.new_record?
      render "new"
    else
      #TODO: improve this steps
      flash[:notice] = "Search done!"

      #search possible rooms
      @search = Search.new(session[:search_params])
      room_attributes = @search.attributes
      room_attributes.delete 'id'
      room_attributes.delete 'created_at'
      room_attributes.delete 'updated_at'
      @rooms = HotelRoom.where(room_attributes)
      @rooms += HostelRoom.where(room_attributes)

      #zero configurations
      session[:search_step] = session[:search_params] = nil
    end
  end

  def destroy
    @search = Search.find(params[:id])
    @search.destroy

    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :ok }
    end
  end

end

