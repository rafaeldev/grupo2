class StudentsController < ApplicationController
  before_action :set_student, only: [:update, :update_skills, :show]

  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_skills
    @student.update(skills: Skill.where(id: params["skills"]))
  end

  def show
    render json: @student
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :genre, :address, :phone1, :phone2, :birthday, :biograph)
  end
end
