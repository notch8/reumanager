class UsersController < ApplicationController
  before_filter :login_from_cookie, :login_required, :except => [ :new, :create, :welcome, :thanks, :observe_perm, :observe_cit, :observe_dis, :observe_pcollege ]
  
  # Be sure to include AuthenticationSystem in Application Controller instead
  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    @user.login = @user.email
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      logout_killing_session!
      redirect_back_or_default('/thanks')
      flash[:notice] = "Thanks for signing up!"
    else
      flash[:error]  = "There were errors with your form, please try again or contact nsfreu@bioeng.ucsd.edu"
      render :action => 'new'
    end
  end
  
  def edit
    params[:id] == nil ? @user = current_user : @user = User.find(params[:id]) if current_user.id == 1
  end
  
  def update
    params[:id] == nil ? @user = current_user : @user = User.find(params[:id])  
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Personal Data was successfully updated.'
      redirect_to :action => "edit"
    else
      render :action => "edit"
    end
  end
  
  def observe_perm
    @paddress = params[:paddress]
    if @paddress == 'no'
      render :update do |page|
        page[:presidence].show
        page[:observers].replace_html :partial => "layouts/observers"
      end
    else
      render :update do |page|
        page[:presidence].hide
        page[:observers].replace_html :partial => "layouts/observers"
      end
    end
  end
  
  def observe_cit
    if params[:student_citizenship] != "United States"
      render :update do |page|
        page[:observers].replace_html :partial => "layouts/observers"
        page[:cor].show
      end
    else
      render :update do |page|
        page[:observers].replace_html :partial => "layouts/observers"
        page[:cor].hide
      end
    end
  end

  def observe_dis
    if params[:disability] == "Yes"
      render :update do |page|
        page[:observers].replace_html :partial => "layouts/observers"          
        page[:dis].show
      end
    else
      render :update do |page|
        page[:observers].replace_html :partial => "layouts/observers"
        page[:dis].hide
      end
    end
  end
  
end
