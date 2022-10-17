class AppliesController < ApplicationController
    
        def index
         @applies = Apply.all
        end  
        def new
          @apply =Apply.new
        end 
        def create
          Apply.create(apply_params)
          if @apply.nil?
            redirect_to jobs_path,flash: {success: "JOB IS APPLIED SUCCESSFULLY"} 
         end 
        end  
        def show
            @apply =  Apply.find(params[:id])
        end    
        def apply_params
          params.require(:apply).permit(:name, :phonenumber,:address,:email,:resume)
        end
     
      
end
