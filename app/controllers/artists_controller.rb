class ArtistsController < ApplicationController

  get '/artists' do
    @all = Artist.all
    erb :'artists/index'
  end

  get'/artists/:slug' do
    @artist = Artist.find_by_slug(params['slug'])
    erb :'artists/show'
  end
end
