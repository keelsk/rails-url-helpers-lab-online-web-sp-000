class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    activate_student_path
    redirect 'show'
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def activate_student_path(student)
      student.active = !student.active
    end
end
