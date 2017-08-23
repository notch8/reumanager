require 'spec_helper'

describe "universities/index" do
  before(:each) do
    assign(:universities, [
      stub_model(University,
        :name => "Name",
        :subdomain => "Subdomain"
      ),
      stub_model(University,
        :name => "Name",
        :subdomain => "Subdomain"
      )
    ])
  end

  it "renders a list of universities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Subdomain".to_s, :count => 2
  end
end
