class NotesController < ApplicationController
  def index
    @subject = Subject.find(params[:subject_id])
    @notes = @subject.notes
    @subjects = Subject.all
  end

  def new
    @subject = Subject.find(params[:subject_id])
    @note = @subject.notes.new
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @note = @subject.notes.new(notes_params)
    if @subject.save
      redirect_to subjects_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @subject = Subject.find(params[:subject_id])
    @note = @subject.notes.destroy
    if note.destroy
      redirect_to subjects_path
    end
  end

  def notes_params
    params.require(:note).permit(:title, :content, :folder)
  end
end
