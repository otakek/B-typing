class SettingController < ApplicationController
  def index
  end

  def new
    render "/words/new"
  end

  def edit
    render "/users/edit"
  end

end
