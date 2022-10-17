class AppliesController < ApplicationController
    
         
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
          params.require(:apply).permit(:name, :phonenumber,:address,:email,:avatar)
        end
     
      
end
