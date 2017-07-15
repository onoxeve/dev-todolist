class ToppagesController < ApplicationController
  def index
    @parenttask = Parenttask.new
    @parenttasks = Parenttask.order('created_at DESC').page(params[:page])
  end
end
