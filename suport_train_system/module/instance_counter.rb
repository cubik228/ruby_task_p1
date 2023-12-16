# frozen_string_literal: true

# This module represents a module for counting instances
module InstanceCounter
  # Includes the ClassMethods and InstanceMethods modules when included in a class
  def self.included(base)
    base.extend(ClassMethods)
    base.include(InstanceMethods)
  end

  # This module contains class methods
  module ClassMethods
    attr_accessor :instances

    def count_instances
      self.instances ||= 0
      self.instances += 1
    end
  end

  # This module contains instance methods
  module InstanceMethods
    protected

    def register_instance
      self.class.count_instances
    end
  end
end
