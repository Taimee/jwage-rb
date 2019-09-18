module Jwage
  class MinimumWage
    attr_reader :value, :start_at, :end_at 

    def initialize(row)
      @value = row['wage']
      @start_at = row['start_at']
      @end_at = row['end_at']
    end

    def include?(date)
      (@start_at <= date) && (@end_at.nil? || date <= @end_at)
    end
  end
end
