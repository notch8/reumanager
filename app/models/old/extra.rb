module Old
  class Extra < ActiveRecord::Base
    establish_connection :old
    self.table_name = 'extras'


    belongs_to  :user
    validates_presence_of       :personal_statement
  end
end
