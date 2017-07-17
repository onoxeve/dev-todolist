class ParenttasksController < ApplicationController

  def new
    keyword = params[:keyword]
    @parenttasks = Parenttask.where("name LIKE ?", "%#{keyword}%").order('created_at DESC')
    @parenttasks_count = Parenttask.where("name LIKE ?", "%#{keyword}%").count
    @childtasks = Childtask.where("name LIKE ?", "%#{keyword}%").order('created_at DESC')
    @childtasks_count = Childtask.where("name LIKE ?", "%#{keyword}%").count
    #binding.pry
  end

  def show
    @parenttask = Parenttask.find(params[:id])
    @childtask = @parenttask.childtasks.build
    @childtasks = @parenttask.childtasks.order('created_at DESC').page(params[:page])
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
