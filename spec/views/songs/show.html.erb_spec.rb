require 'spec_helper'

describe "songs/show" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :name => "Name",
      :artist => "Artist",
      :comment => "MyText",
      :stars => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Artist/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end