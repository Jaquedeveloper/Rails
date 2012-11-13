require 'spec_helper'

describe "disciplinas/show" do
  before(:each) do
    @disciplina = assign(:disciplina, stub_model(Disciplina,
      :nome => "Nome",
      :sigla => "Sigla",
      :cargahoraria => "Cargahoraria",
      :periodo => "Periodo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Sigla/)
    rendered.should match(/Cargahoraria/)
    rendered.should match(/Periodo/)
  end
end
