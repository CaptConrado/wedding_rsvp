require 'spec_helper'

describe "rsvps/show" do
  before(:each) do
    @rsvp = assign(:rsvp, stub_model(Rsvp,
      :name => "Name",
      :email => "Email",
      :going => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/false/)
  end
end
