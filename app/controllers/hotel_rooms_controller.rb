class HotelRoomsController < ApplicationController
  layout 'index'
  # GET /hotel_rooms
  # GET /hotel_rooms.json
  def index
    @hotel_rooms = HotelRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotel_rooms }
    end
  end

  # GET /hotel_rooms/1
  # GET /hotel_rooms/1.json
  def show
    @hotel_room = HotelRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel_room }
    end
  end

  # GET /hotel_rooms/new
  # GET /hotel_rooms/new.json
  def new
    @hotel_room = HotelRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotel_room }
    end
  end

  # GET /hotel_rooms/1/edit
  def edit
    @hotel_room = HotelRoom.find(params[:id])
  end

  # POST /hotel_rooms
  # POST /hotel_rooms.json
  def create
    @hotel_room = HotelRoom.new(params[:hotel_room])

    respond_to do |format|
      if @hotel_room.save
        format.html { redirect_to @hotel_room, notice: 'Hotel room was successfully created.' }
        format.json { render json: @hotel_room, status: :created, location: @hotel_room }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotel_rooms/1
  # PUT /hotel_rooms/1.json
  def update
    @hotel_room = HotelRoom.find(params[:id])

    respond_to do |format|
      if @hotel_room.update_attributes(params[:hotel_room])
        format.html { redirect_to @hotel_room, notice: 'Hotel room was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_rooms/1
  # DELETE /hotel_rooms/1.json
  def destroy
    @hotel_room = HotelRoom.find(params[:id])
    @hotel_room.destroy

    respond_to do |format|
      format.html { redirect_to hotel_rooms_url }
      format.json { head :ok }
    end
  end
end
