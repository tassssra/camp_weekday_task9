class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @new_tasks = Task.where(is_display: true).find_new_tasks
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: 'タスクを登録しました。'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'タスクを更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: 'タスクを削除しました。'
  end

  def hide
    @hide_tasks = Task.where(is_display: false)
  end

  private
    def task_params
      params.require(:task).permit(:title, :memo, :status)
    end

    def set_task
      @task = Task.find(params[:id])
    end
end
