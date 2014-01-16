require 'spec_helper'

describe "Songs" do
  describe "index" do
    it "shows the headline" do
      visit songs_path
      expect(page).to have_content 'Listing songs'
    end
  end
end
