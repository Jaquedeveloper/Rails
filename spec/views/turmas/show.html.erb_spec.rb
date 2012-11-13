require 'spec_helper'

describe "turmas/show" do
  before(:each) do
    @turma = assign(:turma, stub_model(Turma,
      :aluno => nil,
      :professordisciplina => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
