require 'spec_helper'

describe "professors/show" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :nome => "Nome",
      :sexo => "Sexo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Sexo/)
  end
end
