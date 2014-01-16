require 'spec_helper'

describe "Songs" do
 # this is an example for testing a rails app
 # with rspec and capybara.
 # see
 # http://rubydoc.info/github/jnicklas/capybara/master

  describe "basic index" do
    before(:each) do
      create(:boots)
      create(:gambler)
      create(:song)

    end
    describe "index" do
      it "shows the headline" do
        visit songs_path
        expect(page).to have_content 'Listing songs'
        expect(page).to have_content 'Kenny Rogers'
      end
      it "should list all song instances" do
        visit songs_path
        expected_row_count = Song.count+1 # header row
        page.all("table tr").count.should eql(expected_row_count)
        #save_and_open_page
      end
    end


    # you should have one example just rendering the page
    # as long as you don't have proper tests.
    describe "renders all paths: " do
      before(:each) do
        @gambler = create(:gambler)
      end
      it "show" do
        visit song_path(@gambler)
        expect(page).to have_content 'The Gambler'
      end
      it "edit" do
        visit edit_song_path(@gambler)
        expect(page).to have_content 'Edit'
      end

    end
  end
end
