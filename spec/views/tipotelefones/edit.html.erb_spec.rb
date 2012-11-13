require 'spec_helper'

describe "tipotelefones/edit" do
  before(:each) do
    @tipotelefone = assign(:tipotelefone, stub_model(Tipotelefone,
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipotelefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipotelefones_path(@tipotelefone), :method => "post" do
      assert_select "input#tipotelefone_descricao", :name => "tipotelefone[descricao]"
    end
  end
end
