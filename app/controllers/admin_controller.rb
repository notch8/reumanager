class AdminController < ApplicationController
before_filter :login_from_cookie, :login_required, :check_admin
ssl_required :index, :show, :observe_student_select, :report, :incomplete, :submitted, :complete, :create_report, :delete

  def index
    case params[:sort]
    when "name"
      @students = User.paginate :page => params[:page], :order => 'lastname ASC', :conditions => [ "role_id = ?", 2], :per_page => 20
#    when "college"
#      @students = User.find(:all, :order => 'college ASC')
#    when "major"
#      @students = User.find(:all, :order => 'major ASC')
#    when "gpa"
#      @students = User.find(:all, :order => "gpa DESC")
    when "date"
      @students = User.paginate :page => params[:page], :order => "created_at ASC", :conditions => [ "role_id = ?", 2], :per_page => 20
    else
      @students = User.paginate :page => params[:page], :conditions => [ "role_id = ?", 2], :per_page => 20
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def observe_student_select
    render :update do |page|
      page.redirect_to :action => "show", :id => params[:student_select]
    end
  end
  
  def report
    @students = User.paginate :page => params[:page], :order => 'lastname ASC'
  end

  def incomplete
    @students = User.paginate :page => params[:page], :order => 'lastname ASC', :conditions => [ "submitted_at is null and role_id = ?", 2 ], :per_page => 20
    render :action => "index"
  end

  def submitted
    @students = User.paginate :page => params[:page], :order => 'lastname ASC', :conditions => [ "submitted_at is not null and completed_at is null and role_id = ?", 2 ], :per_page => 20
    render :action => "index"
  end

  def complete    
    @students = User.paginate :page => params[:page], :order => 'lastname ASC', :conditions => [ "submitted_at is not null and completed_at is not null and role_id = ?", 2 ], :per_page => 20
    render :action => "index"
  end
  
  def create_report
    @all_students = User.find(:all, :order => 'lastname ASC')
     @students = User.paginate :page => params[:page], :order => 'lastname ASC'
     pdf = PDF::Writer.new
     Recommendation.find(:all).each do |r|
       r.make_pdf(pdf)
       pdf.start_new_page
     end
     if pdf.save_as("#{RAILS_ROOT}/public/pdf/complete.pdf")
       flash[:notice] = "Report created."
       @report = "/pdf/complete.pdf"
     else
       flash[:notice] = "There were errors. Please try again or contact jgrevich@ucsd.edu"
       redirect_to :action => "index"
     end
   end
  
  def delete
    if request.delete? and User.find(params[:id]).destroy
      flash[:notice] = "User has been permanently deleted." 
      redirect_to :action => "index"
    else
      flash[:notice] = "There was an error"
      redirect_to :action => "index"
    end
  end
end