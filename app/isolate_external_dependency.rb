require_relative 'wheel'

module SomeFrameWork
  class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end
  end
end

module GearWrapper
  def self.gear(args)
    SomeFrameWork::Gear.new(args[:chainring], args[:cog], args[:wheel])
  end
end

GearWrapper.gear(chainring: 52, cog: 18, wheel: Wheel.new(26, 1.5).gear_inches)