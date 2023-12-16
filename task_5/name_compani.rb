module Manufacturer_name_compani
  def manufacturer_name_compani(_name, _manufacturer)
    self.name = _name
    self.manufacturer = _manufacturer
  end

  def name_compani
    name
  end

  def manufacturer_compani
    manufacturer
  end
  attr_accessor :name, :manufacturer
end
