class ChildtasksController < ApplicationController

  def create
    @childtask = Childtask.new(childtask_params)

    if @childtask.save
      flash[:success] = "新しいToDoが作成されました"
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = "ToDoの作成に失敗しました。文字数がオーバーしているか、同名のToDoが存在します。"
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    @childtask = Childtask.find(params[:id])
    if @childtask.update(status: params[:status])
      flash[:success] = "ToDoの更新に成功しました"
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = "ToDoの更新に失敗しました"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def childtask_params
    params.require(:childtask).permit(:name, :due_date, :parenttask_id)
  end
end
