class ParticipantsController < ApplicationController
  # GET /participants/new
  def new
    @participant = Participant.new
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)

    respond_to do |format|
      if @participant.save
        format.html { redirect_to new_participant_path, notice: 'Parabéns! Você está confirmado para o workshop!.' }
        format.json { render action: 'show', status: :created, location: @participant }
      else
        format.html { render action: 'new' }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:email)
    end
end
