class CommunitiesController < ApplicationController
  
  def new
    @community = Community.new
  end


  def show
    @community = Community.find(params[:id])
  end

  def create
    @community = Community.new
    
    respond_to do |format|
      if @community.save
        format.html { redirect_to @community, notice: 'Community was successfully created.' }
        format.json { render :show, status: :created, location: @community }
      else
        format.html { render :new }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
  end
end
end
