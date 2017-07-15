class Parenttask < ApplicationRecord
  validates :name, presence: true,
                   length: { maximum: 30, message: "ToDoリストの名称は30文字以内にしてください" },
                   uniqueness: { case_sensitive: false, message: "同じ名前のToDoリストが既に存在します" }
end
