class Visitor < ApplicationRecord

  RELIGION = [['हिन्दू',1] ,['​मुस्लिम',2], ['सिख',3], ['ईसाई',4], ['अन्य', 5]]
  SEX =[['पुरूष',1], ['​महिला',2]]

  belongs_to :user
  belongs_to :tour_place

  #belongs_to :parent, :class_name => 'MyModel'
  #has_many :children, :class_name => 'MyModel', :foreign_key => 'parent_id'
  #belongs_to :parent, :class_name => "Visitor"
  #has_one :assistant, :class_name => "Visitor", :dependent => :destroy, :foreign_key => "parent_id"

  validates  :reg_no, :presence => true
  validates  :receipt_date, :presence => true
  validates  :religion, :presence => true
  validates  :name, :presence => true
  validates  :sex, :presence => true
  validates  :father_name, :presence => true
  validates  :address, :presence => true
  validates  :date_of_birth, :presence => true
  validates  :identity_name, :presence => true
  validates  :identity_number, :presence => true
  validates  :mobile_number, :presence => true
  validates  :tour_place_id, :presence => true
  validates  :age, :presence => true

  def assistant
    return Visitor.where(:parent_id => self.id).first
  end

  def parent
    return Visitor.where(:id => self.parent_id).first
  end

end
