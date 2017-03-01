class TagsController < ApplicationController

  # GET /tags/new
  def new
    @tag = Tag.new
  end

  # POST /tags
  def create
    @tag = Tag.new(tag_params)

    respond_to do |format|
      if @tag.save
        format.html { redirect_to new_tag_path, notice: 'Tag was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def tag_params
    params.require(:tag).permit(:name)
  end

end
