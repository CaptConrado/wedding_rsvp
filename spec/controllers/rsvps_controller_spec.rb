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

describe RsvpsController do

  # This should return the minimal set of attributes required to create a valid
  # Rsvp. As you add validations to Rsvp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RsvpsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all rsvps as @rsvps" do
      rsvp = Rsvp.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rsvps).should eq([rsvp])
    end
  end

  describe "GET show" do
    it "assigns the requested rsvp as @rsvp" do
      rsvp = Rsvp.create! valid_attributes
      get :show, {:id => rsvp.to_param}, valid_session
      assigns(:rsvp).should eq(rsvp)
    end
  end

  describe "GET new" do
    it "assigns a new rsvp as @rsvp" do
      get :new, {}, valid_session
      assigns(:rsvp).should be_a_new(Rsvp)
    end
  end

  describe "GET edit" do
    it "assigns the requested rsvp as @rsvp" do
      rsvp = Rsvp.create! valid_attributes
      get :edit, {:id => rsvp.to_param}, valid_session
      assigns(:rsvp).should eq(rsvp)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Rsvp" do
        expect {
          post :create, {:rsvp => valid_attributes}, valid_session
        }.to change(Rsvp, :count).by(1)
      end

      it "assigns a newly created rsvp as @rsvp" do
        post :create, {:rsvp => valid_attributes}, valid_session
        assigns(:rsvp).should be_a(Rsvp)
        assigns(:rsvp).should be_persisted
      end

      it "redirects to the created rsvp" do
        post :create, {:rsvp => valid_attributes}, valid_session
        response.should redirect_to(Rsvp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved rsvp as @rsvp" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rsvp.any_instance.stub(:save).and_return(false)
        post :create, {:rsvp => {}}, valid_session
        assigns(:rsvp).should be_a_new(Rsvp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rsvp.any_instance.stub(:save).and_return(false)
        post :create, {:rsvp => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested rsvp" do
        rsvp = Rsvp.create! valid_attributes
        # Assuming there are no other rsvps in the database, this
        # specifies that the Rsvp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Rsvp.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => rsvp.to_param, :rsvp => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested rsvp as @rsvp" do
        rsvp = Rsvp.create! valid_attributes
        put :update, {:id => rsvp.to_param, :rsvp => valid_attributes}, valid_session
        assigns(:rsvp).should eq(rsvp)
      end

      it "redirects to the rsvp" do
        rsvp = Rsvp.create! valid_attributes
        put :update, {:id => rsvp.to_param, :rsvp => valid_attributes}, valid_session
        response.should redirect_to(rsvp)
      end
    end

    describe "with invalid params" do
      it "assigns the rsvp as @rsvp" do
        rsvp = Rsvp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rsvp.any_instance.stub(:save).and_return(false)
        put :update, {:id => rsvp.to_param, :rsvp => {}}, valid_session
        assigns(:rsvp).should eq(rsvp)
      end

      it "re-renders the 'edit' template" do
        rsvp = Rsvp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rsvp.any_instance.stub(:save).and_return(false)
        put :update, {:id => rsvp.to_param, :rsvp => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested rsvp" do
      rsvp = Rsvp.create! valid_attributes
      expect {
        delete :destroy, {:id => rsvp.to_param}, valid_session
      }.to change(Rsvp, :count).by(-1)
    end

    it "redirects to the rsvps list" do
      rsvp = Rsvp.create! valid_attributes
      delete :destroy, {:id => rsvp.to_param}, valid_session
      response.should redirect_to(rsvps_url)
    end
  end

end
