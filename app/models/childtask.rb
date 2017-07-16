class Childtask < ApplicationRecord
  validates :name, presence: true,
                   length: { maximum: 30, message: "ToDoの名称は30文字以内にしてください" },
                   uniqueness: { case_sensitive: false, message: "同じ名称のToDoが既に存在します" }

  belongs_to :parenttask

  def done(childtask)
    childtask.update(status: true)
  end

  def doing(childtask)
    childtask.update(status: false)
  end

end
