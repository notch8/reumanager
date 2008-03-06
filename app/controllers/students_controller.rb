class StudentsController < ApplicationController
  include AuthenticatedSystem
  before_filter :login_from_cookie, :login_required, :except => [:new, :create, :welcome, :thanks, :observe_perm, :observe_cit, :observe_dis, :observe_pcollege ]
  ssl_allowed :new, :create, :update, :welcome, :thanks, :observe_perm, :observe_cit, :observe_dis, :observe_pcollege
  # GET /students
  # GET /students.xml
  def index
    @students = Student.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end

  # GET /students/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/new
  # GET /students/new.xml
  def new
    @student = Student.new
    @recommender = Recommender.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.xml
  def create
    @student = Student.new(params[:student])
    @recommender = Recommender.new(params[:recommender])
    @recommender.save
    @student.recommender_id = @recommender.id

    respond_to do |format|
      if @recommender.save && @student.save_with_captcha  
        flash[:notice] = 'Student was successfully created.'
        format.html { redirect_to :controller => 'students', :action => 'thanks' }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        flash.now[:notice] = 'There were errors'
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  # PUT /students/1
  # PUT /students/1.xml
  def update
    @student = Student.find(params[:id])
    @recommender = Recommender.new(params[:recommender])
    
    respond_to do |format|
      if @recommender.update_attributes(params[:student]) && @recommender.update_attributes(params[:recommender])
        flash[:notice] = 'Student was successfully updated.'
        format.html { redirect_to "/thanks" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.xml
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
    end
  end
  
  def observe_perm
    @paddress = params[:paddress]
    if @paddress == 'no'
      render :update do |page|
        page[:observers].replace_html :partial => "observers"
        page[:presidence].show
      end
    else
      render :update do |page|  
        page[:observers].replace_html :partial => "observers"
        page[:presidence].hide
      end
    end
  end
  
  def observe_cit
    if params[:student_citizenship] != "United States"
      render :update do |page|
        page[:observers].replace_html :partial => "observers"
        page[:cor].show
      end
    else
      render :update do |page|
        page[:observers].replace_html :partial => "observers"
        page[:cor].hide
      end
    end
  end

  def observe_dis
    if params[:disability] == "Yes"
      render :update do |page|
        page[:observers].replace_html :partial => "observers"          
        page[:dis].show
      end
    else
      render :update do |page|
        page[:observers].replace_html :partial => "observers"
        page[:dis].hide
      end
    end
  end
  
  def observe_pcollege
    if params[:prev_college] == "Yes"
      render :update do |page|
        page[:observers].replace_html :partial => "observers"          
        page[:pcollege].show
      end
    else
      render :update do |page|
        page[:observers].replace_html :partial => "observers"
        page[:pcollege].hide
      end
    end
  end
  
  def thanks
  end
  
  def no_student
  end
  
  def welcome
    render :aciton => "welcome", :layout => "proxy"
  end

  
end