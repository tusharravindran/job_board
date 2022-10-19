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
            redirect_to jobs_path,flash: {notice: "JOB IS APPLIED SUCCESSFULLY"} 
         end 
        end  
        def show
            @apply =  Apply.find(params[:id])
        end 
        
        def reject
          
          @apply = Apply.find(params[:id])
          @apply.status = "Rejected"
          @apply.save
          respond_to do |format|
            format.html { redirect_to applies_path, notice: "The application is rejected" }
            format.json { head :no_content }
          end
        end

        def accept 
        
          @apply = Apply.find(params[:id])
          @apply.status = "Accepted"
          puts "############# \n ############# \n"
          @apply.save
          puts "############# \n ############# \n"
          respond_to do |format|
            format.html { redirect_to applies_path, notice: "application is accepted" }
            format.json { head :no_content }
          end  
        end    

        private
        def apply_params
          params.require(:apply).permit(:name, :phonenumber,:address,:email,:resume, :status)
        end
     
      
end
