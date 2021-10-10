class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end
  
  def new
    @plan = Plan.new
  end
  
  def create
    @plan = Plan.new(params.require(:plan).permit(:title,:startday,:finishday,:allday,:planmemo))
    if @plan.save
      flash[:notice]="予定を新規登録しました"
      redirect_to :plans
    else
      render "new"
    end
  end
  
  def show
    @plan=Plan.find(params[:id])
  end
  
  def edit
    @plan=Plan.find(params[:id])
  end
  
  def update
    @plan=Plan.find(params[:id])
    if @plan.update(params.require(:plan).permit(:title,:startday,:finishday,:allday,:planmemo))
      flash[:notice]="IDが「#{@plan.id}」のスケジュールを更新しました"
      redirect_to:plans
    else
      render "edit"
    end
  end
  
  def destroy
    @plan=Plan.find(params[:id])
    @plan.destroy
    flash[:notice]="スケジュールを削除しました"
    redirect_to:plans
  end
end
