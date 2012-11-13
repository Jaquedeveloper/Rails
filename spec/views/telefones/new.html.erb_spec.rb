require 'spec_helper'

describe "telefones/new" do
  before(:each) do
    assign(:telefone, stub_model(Telefone,
      :ddd => "MyString",
      :numero => "MyString",
      :aluno => nil,
      :tipotelefone => nil
    ).as_new_record)
  end

  it "renders new telefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => telefones_path, :method => "post" do
      assert_select "input#telefone_ddd", :name => "telefone[ddd]"
      assert_select "input#telefone_numero", :name => "telefone[numero]"
      assert_select "input#telefone_aluno", :name => "telefone[aluno]"
      assert_select "input#telefone_tipotelefone", :name => "telefone[tipotelefone]"
    end
  end
end
