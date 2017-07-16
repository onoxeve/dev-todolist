class Parenttask < ApplicationRecord
  validates :name, presence: true,
                   length: { maximum: 30, message: "ToDoリストの名称は30文字以内にしてください" },
                   uniqueness: { case_sensitive: false, message: "同じ名称のToDoリストが既に存在します" }

  has_many :childtasks, dependent: :destroy
end
