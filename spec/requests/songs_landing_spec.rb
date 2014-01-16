require 'spec_helper'

describe "Songs" do
  describe "landing page" do
    before(:each) do
      create(:father_and_son)
      create(:common)
    end
    it "shows the songs in the correct order" do
        visit root_path
        expect(page).to have_content 'Latest Song: Common People by Pulp'
    end
  end
end
