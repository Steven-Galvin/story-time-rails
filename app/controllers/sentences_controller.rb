class SentencesController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new
    @randImage = rand(12)
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      redirect_to story_path(@sentence.story)
    else
      render :new
    end
  end

private
  def sentence_params
    params.require(:sentence).permit(:author, :content, :image)
  end
end
