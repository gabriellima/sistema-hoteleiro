class HostelRoomsController < ApplicationController
  layout 'index'
  # GET /hostel_rooms
  # GET /hostel_rooms.json
  def index
    @hostel_rooms = HostelRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostel_rooms }
    end
  end

  # GET /hostel_rooms/1
  # GET /hostel_rooms/1.json
  def show
    @hostel_room = HostelRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hostel_room }
    end
  end

  # GET /hostel_rooms/new
  # GET /hostel_rooms/new.json
  def new
    @hostel_room = HostelRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hostel_room }
    end
  end

  # GET /hostel_rooms/1/edit
  def edit
    @hostel_room = HostelRoom.find(params[:id])
  end

  # POST /hostel_rooms
  # POST /hostel_rooms.json
  def create
    @hostel_room = HostelRoom.new(params[:hostel_room])

    respond_to do |format|
      if @hostel_room.save
        format.html { redirect_to @hostel_room, notice: 'Hostel room was successfully created.' }
        format.json { render json: @hostel_room, status: :created, location: @hostel_room }
      else
        format.html { render action: "new" }
        format.json { render json: @hostel_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostel_rooms/1
  # PUT /hostel_rooms/1.json
  def update
    @hostel_room = HostelRoom.find(params[:id])

    respond_to do |format|
      if @hostel_room.update_attributes(params[:hostel_room])
        format.html { redirect_to @hostel_room, notice: 'Hostel room was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hostel_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostel_rooms/1
  # DELETE /hostel_rooms/1.json
  def destroy
    @hostel_room = HostelRoom.find(params[:id])
    @hostel_room.destroy

    respond_to do |format|
      format.html { redirect_to hostel_rooms_url }
      format.json { head :ok }
    end
  end
end
