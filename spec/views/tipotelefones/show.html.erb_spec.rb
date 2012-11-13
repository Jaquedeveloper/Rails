require 'spec_helper'

describe "tipotelefones/show" do
  before(:each) do
    @tipotelefone = assign(:tipotelefone, stub_model(Tipotelefone,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
