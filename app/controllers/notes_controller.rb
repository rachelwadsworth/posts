class NotesController < ApplicationController
  def create
    @note = Note.new
    
    if @note.save
      redirect_to notes_path
    else
      render :new
    end
  end

  def index
      @notes = Note.all
     end
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  
    def edit
      @note = Note.find(params[:id])

      private

  def notes_params
    params.require(:note).permit(:title, :description)
  end
  end
  end
