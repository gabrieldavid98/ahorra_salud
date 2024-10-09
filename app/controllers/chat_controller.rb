class ChatController < ApplicationController
  before_action :set_chat, only: [:create]

  def home
    if patient_signed_in?
      if current_patient.chat.nil?
        @chat = Chat.new({patient_id: current_patient.id})
        @chat.save
      else
        @chat = current_patient.chat
      end
    end

    if support_signed_in?
      @chat = Chat.find(1)
    end

    @chat_message = ChatMessage.new
  end

  def create
    chat_msg = ChatMessage.new chat_msg_params
    chat_msg.chat_id = @chat.id
    chat_msg.support_id = 1

    respond_to do |format|
      if chat_msg.save
        format.html { redirect_to chat_home_path }
      else
        format.html { redirect_to chat_home_path, alert: "Error al enviar el mensaje" }
      end
    end
  end

  private

  def set_chat
    @chat = Chat.find(params[:id])
  end

  def chat_msg_params
    params.require(:chat_message).permit(:content)
  end
end
