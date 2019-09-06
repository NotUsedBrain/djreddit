class CommunityController < ApplicationController
  
  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    
    respond_to do |format|
      if @community.save
        format.html { redirect_to @post, notice: 'Community was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
  end
end
end
