class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    if params[:status] == "active"
      @students = Student.active
    else
      @students = Student.inactive
    end
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
