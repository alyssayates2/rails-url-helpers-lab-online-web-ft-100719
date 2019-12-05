class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if params[:status] == "active"
      @students = Student.active
    else
      @students = Student.inactive
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
