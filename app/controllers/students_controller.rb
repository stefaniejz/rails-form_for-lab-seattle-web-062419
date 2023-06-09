class StudentsController < ActionController::Base

    def new   
        @student = Student.new 
    end

    def create
        @student= Student.create(first_name:params["student"]["first_name"],last_name:params["student"]["last_name"])
        redirect_to @student  
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    
    end

    def update
        @student =Student.update(first_name:params["student"]["first_name"],last_name:params["student"]["last_name"])
        redirect_to @student
    end
    
end