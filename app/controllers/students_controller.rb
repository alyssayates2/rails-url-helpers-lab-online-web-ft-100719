class StudentsController < ApplicationController
  before_action :set_student, only: :show

  student

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
