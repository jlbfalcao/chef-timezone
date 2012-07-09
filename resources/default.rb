

def initialize(*args)
  super
  @action = :setup
end

actions :setup

attribute :zone, :kind_of => String, :name_attribute => true
attribute :utc, :kind_of => [TrueClass, FalseClass], :default => true
attribute :arc, :kind_of => [TrueClass, FalseClass], :default => false
