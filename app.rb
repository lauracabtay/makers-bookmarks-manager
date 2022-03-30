require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        erb :index
    end

    get '/bookmarks' do
        @bookmark_list = Bookmark.new
        erb :bookmarks
    end

    run! if app_file == $0
end