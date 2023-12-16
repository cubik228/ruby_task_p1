# This module represents a manufacturer name and company
module ManufacturerNameCompany
  attr_accessor :name, :company

  # Initializes a new instance of ManufacturerNameCompany
  def initialize(name, company)
    self.name = name
    self.company = company
    name.length >= 4 && company.length >= 4
  end

  # Returns the name of the manufacturer
  def manufacturer_name
    @name
  end
end
