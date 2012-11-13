require 'spec_helper'

describe "tipotelefones/new" do
  before(:each) do
    assign(:tipotelefone, stub_model(Tipotelefone,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipotelefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipotelefones_path, :method => "post" do
      assert_select "input#tipotelefone_descricao", :name => "tipotelefone[descricao]"
    end
  end
end
