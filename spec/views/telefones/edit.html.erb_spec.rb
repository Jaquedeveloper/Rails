require 'spec_helper'

describe "telefones/edit" do
  before(:each) do
    @telefone = assign(:telefone, stub_model(Telefone,
      :ddd => "MyString",
      :numero => "MyString",
      :aluno => nil,
      :tipotelefone => nil
    ))
  end

  it "renders the edit telefone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => telefones_path(@telefone), :method => "post" do
      assert_select "input#telefone_ddd", :name => "telefone[ddd]"
      assert_select "input#telefone_numero", :name => "telefone[numero]"
      assert_select "input#telefone_aluno", :name => "telefone[aluno]"
      assert_select "input#telefone_tipotelefone", :name => "telefone[tipotelefone]"
    end
  end
end
