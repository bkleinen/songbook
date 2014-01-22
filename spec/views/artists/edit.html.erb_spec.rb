require 'spec_helper'

describe "artists/edit" do
  before(:each) do
    @artist = assign(:artist, stub_model(Artist,
      :first => "MyString",
      :middle => "MyString",
      :last => "MyString"
    ))
  end

  it "renders the edit artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do
      assert_select "input#artist_first[name=?]", "artist[first]"
      assert_select "input#artist_middle[name=?]", "artist[middle]"
      assert_select "input#artist_last[name=?]", "artist[last]"
    end
  end
end
