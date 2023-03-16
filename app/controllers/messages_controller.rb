class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel",
                                    mod_message: message_render(message)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  # Why is it a private method?
  ### Felipe resp:
  # The thing is, you just need to expose methods as public if they really need to be called from another context.In case of controller, another class is responsible to call the actions from your controller. that's why you need to have the actions as public methods. The same works for any class that you implement.If you check SAW project, the aide classes have basically one public method, which is fireAll the others are private because they are internal processment and shoudln't be called from external resources
  # It is the Open/Closed concept - Letter O from SOLID principles
  def message_render(message)
    render(partial: 'message', locals: { message: message })
  end
end
