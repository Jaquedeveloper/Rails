require 'spec_helper'

describe "professordisciplinas/index" do
  before(:each) do
    assign(:professordisciplinas, [
      stub_model(Professordisciplina,
        :ano => "Ano",
        :periodo => "Periodo",
        :professor => nil,
        :disciplina => nil
      ),
      stub_model(Professordisciplina,
        :ano => "Ano",
        :periodo => "Periodo",
        :professor => nil,
        :disciplina => nil
      )
    ])
  end

  it "renders a list of professordisciplinas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    assert_select "tr>td", :text => "Periodo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
