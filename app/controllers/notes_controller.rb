# frozen_string_literal: true

# This class is a controller for the Note model, and it has actions for index, show, new, edit,
# create, update, and destroy.
class NotesController < ApplicationController
  before_action :set_board, only: %i[new create edit update]
  before_action :set_note, only: %i[show edit update destroy]

  # GET /notes or /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1 or /notes/1.json
  def show; end

  # GET /notes/new
  def new
    @board = Board.find(params[:board_id])
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit; end

  # POST /notes or /notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to board_note_url(@board, @note), notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to board_note_url(@board, @note), notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note.destroy

    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id])
  end

  # Only allow a list of trusted parameters through.
  def note_params
    params.require(:note).permit(:name, :body, :board_id, :user_id)
  end
end
