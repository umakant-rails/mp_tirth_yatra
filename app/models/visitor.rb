require 'roo'
class Visitor < ApplicationRecord

  RELIGION = [['हिन्दू', 'हिन्दू'] ,['​मुस्लिम','​मुस्लिम'], ['सिख','सिख'], ['ईसाई','ईसाई'], ['अन्य', 'अन्य']]
  SEX =[['पुरूष','पुरूष'], ['​महिला','​महिला']]

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

  private

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |visitor|
        csv << visitor.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file, current_user, tour_place)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    visitor = nil
    (2..spreadsheet.last_row).each do |i|
      row = spreadsheet.row(i)
      identity_number = row[13].is_a?(Float) ? row[13].to_i : row[13]

      visitor_hash = {reg_no: row[1], receipt_date: row[2], 
      religion: row[3], name: row[4], sex: row[5], father_name: row[6],
      address: row[7], mobile_number: row[9].to_i, date_of_birth:
      row[10], age: row[11].to_i, identity_name: row[12],
      identity_number: identity_number , user_id: current_user.id, tour_place_id: tour_place['id']}

      if row[16] == "सहायक"
        visitor = self.find_visitor(row[1]) # passed reg no of visitor
        visitor_hash[:parent_id] = visitor.id
      end
      Visitor.create!(visitor_hash) if self.is_visitor_exist?(row[1], row[16])
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path, packed: nil, file_warning: :ignore)
    when ".xls" then Roo::Excel.new(file.path, packed: nil, file_warning: :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, packed: nil, file_warning: :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def self.is_visitor_exist?(visitor_reg_no, type)
    if type == "सहायक"
      Visitor.where("reg_no = ? and parent_id is not NULL", visitor_reg_no).blank?
    else
      Visitor.where(reg_no: visitor_reg_no).blank?
    end
  end

  def self.find_visitor(reg_no)
    Visitor.where("reg_no = ? and parent_id is NULL", reg_no).first
  end
  
end
