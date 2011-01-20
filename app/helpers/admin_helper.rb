module AdminHelper

  def options_for_student_select(collection, value_method, text_method1, text_method2, text_method3, selected = nil )
    options = collection.map do |element|
      [(element.send(text_method1) + ", " + element.send(text_method2) + " - " + element.send(text_method3)), element.send(value_method)]
    end
    options_for_select(options, selected)
  end

  def all_students
    @all_students = User.find(:all, :order => 'lastname ASC', :conditions => ['role_id = ?', 2])
  end
  
  def admin_selected_user
    if @user
      return @user.id
    else
      return all_students.first.id
    end
  end
  
end
