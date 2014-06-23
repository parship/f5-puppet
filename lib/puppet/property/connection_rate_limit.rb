require 'puppet/property'

class Puppet::Property::F5ConnectionRateLimit < Puppet::Property
  desc 'The connection rate limit of the object.
  Valid options: <integer>'

  validate do |value|
    unless value =~ /^\d+$/
      raise ArgumentError, "#{name} must be an Integer"
    end
  end
end