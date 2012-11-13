require 'spec_helper'

describe "professordisciplinas/edit" do
  before(:each) do
    @professordisciplina = assign(:professordisciplina, stub_model(Professordisciplina,
      :ano => "MyString",
      :periodo => "MyString",
      :professor => nil,
      :disciplina => nil
    ))
  end

  it "renders the edit professordisciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => professordisciplinas_path(@professordisciplina), :method => "post" do
      assert_select "input#professordisciplina_ano", :name => "professordisciplina[ano]"
      assert_select "input#professordisciplina_periodo", :name => "professordisciplina[periodo]"
      assert_select "input#professordisciplina_professor", :name => "professordisciplina[professor]"
      assert_select "input#professordisciplina_disciplina", :name => "professordisciplina[disciplina]"
    end
  end
end
