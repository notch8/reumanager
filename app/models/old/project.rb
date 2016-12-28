module Old
  class Project < ActiveRecord::Base
    establish_connection :old
    self.table_name = 'projects'
  end
end
