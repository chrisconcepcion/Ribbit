class RibbitsController < ApplicationController
	
	def index
    @ribbits = Ribbit.all include: :user
    @ribbit = Ribbit.new
	end
	
	def show
		@user = User.find(params[:id])
		@ribbit = Ribbit.new
		binding.pry
	end
	
	def create
		@ribbit = Ribbit.new(ribbit_params)
		@ribbit.user_id = current_user.id
		if @ribbit.save
			redirect_to user_path(current_user.id)
		else
			redirect_to user_path(current_user.id)
			flash[:error] = "Ribbit over 140 characters"
		end
	end
	
	private
	def	ribbit_params
		params.require(:ribbit).permit(:contents)
	end
	
end