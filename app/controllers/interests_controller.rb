class InterestsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    participant_params = params.require(:participant).permit(:email)
    @participant = Participant.new participant_params

    respond_to do |format|
      if @participant.save
        format.html {redirect_to new_participant_path, notice: "Você foi cadastrado com sucesso e será notificado sobre os próximos workshops!"}
      else
        @error_msg = @participant.errors.first[1]
        format.html {render "new"}
      end
    end
  end
end
