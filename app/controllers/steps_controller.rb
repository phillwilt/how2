class StepsController < ApplicationController
  def new
    @list = List.find(params['list_id'])
    @step = Step.new(list_id: params['list_id'])
  end

  def create
    @list = List.find(params['list_id'])
    @step = @list.steps.build(step_params)

    if @step.save
      redirect_to list_path(@list), notice: 'Added a step successfully'
    else
      render :new, 'Step could not be created'
    end
  end

  def show
    @step = Step.find(params[:id])
  end

  def edit
    @list = List.find(params['list_id'])
    @step = Step.find(params[:id])
  end

  def update
    @step = Step.find(params[:id])
    if @step.update(step_params)
      redirect_to list_path(@step.list), notice: 'Added a step successfully'
    else
      render :edit
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @list = List.find(params['list_id'])
    @step.destroy
    redirect_to list_path(@list), notice: 'Destroyed step'
  end

  private

  def step_params
    params.require(:step).permit(:body, :list_id)
  end
end
