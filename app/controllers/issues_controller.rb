class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  # GET /issues
  def index
    @issues = Issue.all
    if check_filter(:status)
      @issues = @issues.status(params[:issue][:status])
    end
    if check_filter(:tag)
      @issues = Issue.all.select do |issue|
        issue.tags.include?(Tag.find_by_name(params[:issue][:tag]))
      end
    end
    @tags = Tag.joins(:issues).uniq
  end

  # GET /issues/new
  def new
    @issue = Issue.new
    @tags = Tag.all
  end

  # POST /issues
  def create
    @tags = Tag.all

    @issue = Issue.new(issue_params)
    @issue.status = :open

    respond_to do |format|
      if @issue.save
        format.html { redirect_to issues_path, notice: 'Issue was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /issues/1
  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to @issue, notice: 'Issue was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /issues/1
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue was successfully destroyed.' }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_params
      params.require(:issue).permit(:title, :description, :status, :latitude, :longitude, :image, :tag_ids => [])
    end

    def check_filter(filter)
      params[:issue].present? && params[:issue][filter].present?
    end

end
