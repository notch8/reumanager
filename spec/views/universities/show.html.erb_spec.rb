require 'spec_helper'

describe "universities/show" do
  before(:each) do
    @university = assign(:university, stub_model(University,
      :name => "Name",
      :subdomain => "Subdomain"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Subdomain/)
  end
end
