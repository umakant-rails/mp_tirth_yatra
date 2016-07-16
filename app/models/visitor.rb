class Visitor < ApplicationRecord

  RELIGION = [['हिन्दू',1] ,['​मुस्लिम',2], ['सिख',3], ['ईसाई',4], ['अन्य', 5]]
  SEX =[['पुरूष',1], ['​महिला',2]]

  belongs_to :user

end
