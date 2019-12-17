class CowsController < ApplicationController
	def index

		#@cows = Cow.all
		if params[:name]
		 @cows = Cow.where('name like ?', "%#{params[:name]}%")
  		else
   		 @cows = Cow.all
  end
	end

	def show
		@cow=Cow.find(params[:id])
	end

	def new
		@cow=Cow.new
	end

	def create
		@cow = Cow.new(cow_params)
		if(@cow.save)
		redirect_to @cow
		else
			render 'new'
		end
	end

	def edit
		@cow=Cow.find(params[:id])
	end

	def update
		@cow=Cow.find(params[:id])
		if(@cow.update(cow_params))
		redirect_to @cow
		else
			render 'edit'
		end
	end

	def destroy
		@cow=Cow.find(params[:id])
		@cow.destroy

		redirect_to cows_path
	end

	private def cow_params
		params.require(:cow).permit(:name,:description,:weight,:age)
	end
end
