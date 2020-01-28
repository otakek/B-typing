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
    @word = @user.word.new(set_user)
    @word.save
  end

  private

  def word_params
    params.require(:word).permit(:content).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
