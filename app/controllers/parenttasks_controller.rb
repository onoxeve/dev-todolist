class ParenttasksController < ApplicationController
  def show
  end

  def create
    @parenttask = Parenttask.new(parenttask_params)

    if @parenttask.save
      flash[:success] = "新しいToDoリストが作成されました"
      redirect_to root_url
    else
      @parenttasks = Parenttask.order('created_at DESC').page(params[:page])
      flash.now[:danger] = "ToDoリストの作成に失敗しました"
      render 'toppages/index'
    end
  end

  private

  def parenttask_params
    params.require(:parenttask).permit(:name)
  end
end
