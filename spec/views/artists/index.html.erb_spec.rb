require 'spec_helper'

describe "artists/index" do
  before(:each) do
    assign(:artists, [
      stub_model(Artist,
        :first => "First",
        :middle => "Middle",
        :last => "Last"
      ),
      stub_model(Artist,
        :first => "First",
        :middle => "Middle",
        :last => "Last"
      )
    ])
  end

  it "renders a list of artists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Middle".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
  end
end
