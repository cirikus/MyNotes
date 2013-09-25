class NotesController < ApplicationController
  
  def index
    @all_note = Note.all
  end

end
