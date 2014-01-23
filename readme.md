Rails Songbook
==============
[![Build Status](https://travis-ci.org/bkleinen/songbook.png)](https://travis-ci.org/bkleinen/songbook)


## Notes on Creating the Artist Selector

see http://guides.rubyonrails.org/form_helpers.html

    <%= f.select(:city_id, ...) %>

    <%= collection_select(:person, :city_id, City.all, :id, :name) %>

translates to

    <%= f.collection_select( :artist_id, Artist.all, :id, :last) %>

