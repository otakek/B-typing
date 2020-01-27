class WordsController < ApplicationController
  before_action :set_user

  def index
    @word = Word.new
    @words = @users.words.incloud(:user)
  end

  def new
    @word = Word.new
    @word.users << current_user
  end

  def create
    @word = @users.words.new(word_params)
    @word.save
  end

  private

  def word_params
    params.require(:word).permit(:content).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
