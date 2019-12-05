class StudentsController < ApplicationController
  before_action :set_student, only: :show

  get '/students/:status', to: 'students#index', foo: 'bar'


  def index
    @students = Student.all
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
