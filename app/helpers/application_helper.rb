module ApplicationHelper
  def done_status_counts(parenttask)
    parenttask.childtasks.where(status: true).count
  end

  def childtask_counts(parenttask)
    parenttask.childtasks.count
  end

  def first_due_date(parenttask)
    I18n.l(Parenttask.order(:created_at).first.created_at, format: :long)
  end
end
