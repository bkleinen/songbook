require 'spec_helper'

describe "Songs" do
 # this is an example for testing a rails app
 # with rspec and capybara.
 # see
 # http://rubydoc.info/github/jnicklas/capybara/master

  describe "basic index" do
    before(:each) do
      [5,2,1,3,4].each do |i|
         create(:song, title: "Song No #{i}", stars: i)
      end
    end
    it "shows the songs in the correct order" do
        visit songs_path
        click_link('v')
        #save_and_open_page

        # how to check for order...
        # http://launchware.com/articles/acceptance-testing-asserting-sort-order
        'Song No 5'.should appear_before('Song No 4')
        'Song No 4'.should appear_before('Song No 3')
        'Song No 3'.should appear_before('Song No 2')
        'Song No 2'.should appear_before('Song No 1')

    end
  end
end
