require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HotelRoomsController do

  # This should return the minimal set of attributes required to create a valid
  # HotelRoom. As you add validations to HotelRoom, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all hotel_rooms as @hotel_rooms" do
      hotel_room = HotelRoom.create! valid_attributes
      get :index
      assigns(:hotel_rooms).should eq([hotel_room])
    end
  end

  describe "GET show" do
    it "assigns the requested hotel_room as @hotel_room" do
      hotel_room = HotelRoom.create! valid_attributes
      get :show, :id => hotel_room.id.to_s
      assigns(:hotel_room).should eq(hotel_room)
    end
  end

  describe "GET new" do
    it "assigns a new hotel_room as @hotel_room" do
      get :new
      assigns(:hotel_room).should be_a_new(HotelRoom)
    end
  end

  describe "GET edit" do
    it "assigns the requested hotel_room as @hotel_room" do
      hotel_room = HotelRoom.create! valid_attributes
      get :edit, :id => hotel_room.id.to_s
      assigns(:hotel_room).should eq(hotel_room)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HotelRoom" do
        expect {
          post :create, :hotel_room => valid_attributes
        }.to change(HotelRoom, :count).by(1)
      end

      it "assigns a newly created hotel_room as @hotel_room" do
        post :create, :hotel_room => valid_attributes
        assigns(:hotel_room).should be_a(HotelRoom)
        assigns(:hotel_room).should be_persisted
      end

      it "redirects to the created hotel_room" do
        post :create, :hotel_room => valid_attributes
        response.should redirect_to(HotelRoom.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hotel_room as @hotel_room" do
        # Trigger the behavior that occurs when invalid params are submitted
        HotelRoom.any_instance.stub(:save).and_return(false)
        post :create, :hotel_room => {}
        assigns(:hotel_room).should be_a_new(HotelRoom)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HotelRoom.any_instance.stub(:save).and_return(false)
        post :create, :hotel_room => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hotel_room" do
        hotel_room = HotelRoom.create! valid_attributes
        # Assuming there are no other hotel_rooms in the database, this
        # specifies that the HotelRoom created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HotelRoom.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => hotel_room.id, :hotel_room => {'these' => 'params'}
      end

      it "assigns the requested hotel_room as @hotel_room" do
        hotel_room = HotelRoom.create! valid_attributes
        put :update, :id => hotel_room.id, :hotel_room => valid_attributes
        assigns(:hotel_room).should eq(hotel_room)
      end

      it "redirects to the hotel_room" do
        hotel_room = HotelRoom.create! valid_attributes
        put :update, :id => hotel_room.id, :hotel_room => valid_attributes
        response.should redirect_to(hotel_room)
      end
    end

    describe "with invalid params" do
      it "assigns the hotel_room as @hotel_room" do
        hotel_room = HotelRoom.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HotelRoom.any_instance.stub(:save).and_return(false)
        put :update, :id => hotel_room.id.to_s, :hotel_room => {}
        assigns(:hotel_room).should eq(hotel_room)
      end

      it "re-renders the 'edit' template" do
        hotel_room = HotelRoom.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HotelRoom.any_instance.stub(:save).and_return(false)
        put :update, :id => hotel_room.id.to_s, :hotel_room => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hotel_room" do
      hotel_room = HotelRoom.create! valid_attributes
      expect {
        delete :destroy, :id => hotel_room.id.to_s
      }.to change(HotelRoom, :count).by(-1)
    end

    it "redirects to the hotel_rooms list" do
      hotel_room = HotelRoom.create! valid_attributes
      delete :destroy, :id => hotel_room.id.to_s
      response.should redirect_to(hotel_rooms_url)
    end
  end

end
