class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @tweets = Tweet.all
  end
end
