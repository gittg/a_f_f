class MessagesController < ApplicationController

	def index
	end

	def new
		@message = Message.new	
	end

	def create
		@message = Message.new(mesage_params)

		if @message.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def mesage_params
		params.require(:message).permit(:title, :description)
	end

end
