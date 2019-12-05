class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    erb :'./students/index.html'
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
