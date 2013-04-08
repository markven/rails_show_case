
class EventsController < ApplicationController
	
	#宣告獨立物件
	before_filter :find_event, :only => [ :show, :edit, :update, :destroy]


	def index
  		@events = Event.all
	end

	def new
  		@event = Event.new
	end

	def create
  		@event = Event.new(params[:event])
  		if @event.save
    		redirect_to :action => :index
  		else
    		render :action => :new
  		end	  
	end

	def show
  		#被獨立出來了
  		#@event = Event.find(params[:id])
  		@page_title = @event.name
	end

	def edit
		#被獨立出來了
  		#@event = Event.find(params[:id])
	end

	def update
  		#被獨立出來了
  		#@event = Event.find(params[:id])
  		if @event.update_attributes(params[:event])
  			redirect_to :action => :show, :id => @event
  		else
  			render :action => :edit
  		end	
	end
	def destroy
  		#被獨立出來了
  		#@event = Event.find(params[:id])
  		@event.destroy
  
  		redirect_to :action => :index
	end
	#獨立到以下區塊
	protected
		def find_event
  			@event = Event.find(params[:id])
		end 	
	#獨立到以上區塊
end

