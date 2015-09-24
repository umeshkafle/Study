class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subjects = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @subject = Subject.find(params[:id])
    if @subject.destroy
      redirect_to subjects_path
    end
  end

  def subject_params
    params.require(:subject).permit(:title)
  end

end
