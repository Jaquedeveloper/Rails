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

describe TurmasController do

  # This should return the minimal set of attributes required to create a valid
  # Turma. As you add validations to Turma, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TurmasController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all turmas as @turmas" do
      turma = Turma.create! valid_attributes
      get :index, {}, valid_session
      assigns(:turmas).should eq([turma])
    end
  end

  describe "GET show" do
    it "assigns the requested turma as @turma" do
      turma = Turma.create! valid_attributes
      get :show, {:id => turma.to_param}, valid_session
      assigns(:turma).should eq(turma)
    end
  end

  describe "GET new" do
    it "assigns a new turma as @turma" do
      get :new, {}, valid_session
      assigns(:turma).should be_a_new(Turma)
    end
  end

  describe "GET edit" do
    it "assigns the requested turma as @turma" do
      turma = Turma.create! valid_attributes
      get :edit, {:id => turma.to_param}, valid_session
      assigns(:turma).should eq(turma)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Turma" do
        expect {
          post :create, {:turma => valid_attributes}, valid_session
        }.to change(Turma, :count).by(1)
      end

      it "assigns a newly created turma as @turma" do
        post :create, {:turma => valid_attributes}, valid_session
        assigns(:turma).should be_a(Turma)
        assigns(:turma).should be_persisted
      end

      it "redirects to the created turma" do
        post :create, {:turma => valid_attributes}, valid_session
        response.should redirect_to(Turma.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved turma as @turma" do
        # Trigger the behavior that occurs when invalid params are submitted
        Turma.any_instance.stub(:save).and_return(false)
        post :create, {:turma => {}}, valid_session
        assigns(:turma).should be_a_new(Turma)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Turma.any_instance.stub(:save).and_return(false)
        post :create, {:turma => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested turma" do
        turma = Turma.create! valid_attributes
        # Assuming there are no other turmas in the database, this
        # specifies that the Turma created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Turma.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => turma.to_param, :turma => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested turma as @turma" do
        turma = Turma.create! valid_attributes
        put :update, {:id => turma.to_param, :turma => valid_attributes}, valid_session
        assigns(:turma).should eq(turma)
      end

      it "redirects to the turma" do
        turma = Turma.create! valid_attributes
        put :update, {:id => turma.to_param, :turma => valid_attributes}, valid_session
        response.should redirect_to(turma)
      end
    end

    describe "with invalid params" do
      it "assigns the turma as @turma" do
        turma = Turma.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Turma.any_instance.stub(:save).and_return(false)
        put :update, {:id => turma.to_param, :turma => {}}, valid_session
        assigns(:turma).should eq(turma)
      end

      it "re-renders the 'edit' template" do
        turma = Turma.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Turma.any_instance.stub(:save).and_return(false)
        put :update, {:id => turma.to_param, :turma => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested turma" do
      turma = Turma.create! valid_attributes
      expect {
        delete :destroy, {:id => turma.to_param}, valid_session
      }.to change(Turma, :count).by(-1)
    end

    it "redirects to the turmas list" do
      turma = Turma.create! valid_attributes
      delete :destroy, {:id => turma.to_param}, valid_session
      response.should redirect_to(turmas_url)
    end
  end

end
