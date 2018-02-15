class SubjectsController < ApplicationController
    def new
        @subject = Subject.new
    end

    def create
        @subject = Subject.new(subject_params)
        @subject.teacher = current_teacher
        if @subject.save
            # debugger
            flash[:success] = "Subject was created successfully!"
            redirect_to subject_path(@subject)
        else
            render "new"
        end
    end

    def show
        @subject = Subject.find(params[:id])
        @subject_enrollments = @subject.enrollments.paginate(page: params[:page], per_page: 5)
    end

    def index
        @subjects = Subject.paginate(page: params[:page], per_page: 5)
    end

    def edit
        @subject = Subject.find(params[:id])
    end

    def update
        @subject = Subject.find(params[:id])
        if @subject.update(subject_params)
            flash[:success] = "Subject was updated successfully!"
            redirect_to subject_path(@subject)
        else
            render 'edit'
        end
    end

    def destroy
        Subject.find(params[:id]).destroy
        flash[:success] = "subject deleted successfully"
        redirect_to subjects_path
    end
    
    private
        def subject_params
            params.require(:subject).permit(:name)
        end
end