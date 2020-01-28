class SettingController < ApplicationController
  def index
  end

  def new
    @word = Word.new
    render "/words/new"
  end

  def edit
    render "/users/edit"
  end

end
