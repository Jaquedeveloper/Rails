require 'spec_helper'

describe "tipotelefones/index" do
  before(:each) do
    assign(:tipotelefones, [
      stub_model(Tipotelefone,
        :descricao => "Descricao"
      ),
      stub_model(Tipotelefone,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipotelefones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
