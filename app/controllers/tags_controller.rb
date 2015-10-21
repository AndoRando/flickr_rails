class TagsController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new(tag_params)
    if @tag.save
      flash[:notice] = "Tag created."
      redirect_to post_path(@tag.post)
    else
      flash[:alert] = "There was an error."
      render :new
    end
  end

  # def edit
  #
  # end
  #
  # def update
  #
  # end
  #
  # def destroy
  #
  # end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
