module Old
  class Role < ActiveRecord::Base
    establish_connection :old
    self.table_name = 'roles'
    has_many :users
  end
end
