require 'spec_helper'

describe "universities/new" do
  before(:each) do
    assign(:university, stub_model(University,
      :name => "MyString",
      :subdomain => "MyString"
    ).as_new_record)
  end

  it "renders new university form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", universities_path, "post" do
      assert_select "input#university_name[name=?]", "university[name]"
      assert_select "input#university_subdomain[name=?]", "university[subdomain]"
    end
  end
end
