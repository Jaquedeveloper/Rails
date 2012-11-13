require 'spec_helper'

describe "professors/new" do
  before(:each) do
    assign(:professor, stub_model(Professor,
      :nome => "MyString",
      :sexo => "MyString"
    ).as_new_record)
  end

  it "renders new professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => professors_path, :method => "post" do
      assert_select "input#professor_nome", :name => "professor[nome]"
      assert_select "input#professor_sexo", :name => "professor[sexo]"
    end
  end
end
