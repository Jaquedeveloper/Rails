require 'spec_helper'

describe "professordisciplinas/show" do
  before(:each) do
    @professordisciplina = assign(:professordisciplina, stub_model(Professordisciplina,
      :ano => "Ano",
      :periodo => "Periodo",
      :professor => nil,
      :disciplina => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ano/)
    rendered.should match(/Periodo/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
