require 'spec_helper'

describe "rsvps/index" do
  before(:each) do
    assign(:rsvps, [
      stub_model(Rsvp,
        :name => "Name",
        :email => "Email",
        :going => false
      ),
      stub_model(Rsvp,
        :name => "Name",
        :email => "Email",
        :going => false
      )
    ])
  end

  it "renders a list of rsvps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
