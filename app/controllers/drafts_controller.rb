class DraftsController < ApplicationController


   def index
  end

  def new
    @url = drafts_path
    @draft = current_user.items.new
  end

  def show
  end

end
