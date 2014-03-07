class ParticipantsController < ApplicationController
  before_filter :set_event

  # GET /participants/new
  def new
    @participant = Participant.new
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(email: participant_email)
    event_is_full = @event.full?
    if !event_is_full
      @participant.events << @event
    end

    respond_to do |format|
      if @participant.save
        if event_is_full
          format.html { redirect_to new_participant_path, notice: 'O evento está lotado, porém lhe avisaremos sobre os próximos.' }
        else
          format.html { redirect_to new_participant_path, notice: 'Parabéns! Você está confirmado para o workshop!.' }
        end
      else
        @error_msg = @participant.errors.first[1]
        format.html { render action: 'new' }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_email
      params[:participant][:email]
    end

    def set_event
      @event = Event.first || Event.create(name: "Workshop Web", max_participants: 20)
    end
end
