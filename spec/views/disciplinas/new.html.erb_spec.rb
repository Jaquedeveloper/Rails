require 'spec_helper'

describe "disciplinas/new" do
  before(:each) do
    assign(:disciplina, stub_model(Disciplina,
      :nome => "MyString",
      :sigla => "MyString",
      :cargahoraria => "MyString",
      :periodo => "MyString"
    ).as_new_record)
  end

  it "renders new disciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disciplinas_path, :method => "post" do
      assert_select "input#disciplina_nome", :name => "disciplina[nome]"
      assert_select "input#disciplina_sigla", :name => "disciplina[sigla]"
      assert_select "input#disciplina_cargahoraria", :name => "disciplina[cargahoraria]"
      assert_select "input#disciplina_periodo", :name => "disciplina[periodo]"
    end
  end
end
