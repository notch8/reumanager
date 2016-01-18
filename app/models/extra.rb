class Extra < ActiveRecord::Base
  belongs_to  :user
# removed to preserve form data
 validates_presence_of :mentor1
 validates_presence_of :mentor2
 validates_presence_of :mentor3
 validates_presence_of :personal_statement

  def self.mentor_list
    options = [''],
    ["Lihini Aluwihare"],
    ["Katherine Barbeau"],
    ["Douglas Bartlett"],
    ["Adrian Borsa"],
    ["Ron Burton"],
    ["Pat Castillo"],
    ["Dimitri Deheyn"],
    ["Amato Evan"],
    ["Falk Feddersen"],
    ["Jennifer Haase"],
    ["Vicki Grassian"],
    ["Sarah Gille"],
    ["Paul Jensen"],
    ["Tony Koslow"],
    ["James Leichter"],
    ["Lisa Levin"],
    ["Dan Lubin"],
    ["Brian Palenik"],
    ["Kim Prather"],
    ["Stuart Sandin"],
    ["Brice Semmens"],
    ["Ana Sirovic"],
    ["Lynne Talley"],
    ["Lisa Tauxe"],
    ["Jennifer Taylor"],
    ["Maria Vernet"],
    ["Other"]
  end

end
