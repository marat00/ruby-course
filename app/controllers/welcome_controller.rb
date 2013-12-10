class WelcomeController < ApplicationController
  def register
  end

  # GET /urls
  # GET /urls.json
  def index

    # We will be creating a new student object to use with Register URL form
    @student = Student.new 
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @urls }
    end
  end

  def create
    # Create a student
    # You can see the Students table id db/migrate
    @student = Student.new({:name =>params[:student][:name],:course => params[:student][:course]})

    respond_to do |format|
      # add the URL to the student
      # Ruby will give the URL the correct student_id
      if @student.save and @student.urls.create!({:name => '',:url => params[:url]})
        format.html { redirect_to  '/urls', notice: 'Url was successfully created.' }
        format.json { render json: @url, status: :created, location: @url }
      else
        # If the form doesn't validate we'll just redirect.
        # We have to create a route in config/routes.rb for this to work
        format.html { redirect_to  '/error'}
      end
    end
  end
end
