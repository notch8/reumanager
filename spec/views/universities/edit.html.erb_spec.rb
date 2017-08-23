require 'spec_helper'

describe "universities/edit" do
  before(:each) do
    @university = assign(:university, stub_model(University,
      :name => "MyString",
      :subdomain => "MyString"
    ))
  end

  it "renders the edit university form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", university_path(@university), "post" do
      assert_select "input#university_name[name=?]", "university[name]"
      assert_select "input#university_subdomain[name=?]", "university[subdomain]"
    end
  end
end
