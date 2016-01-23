module Optimizely
  class Results

    attr_reader :variation_id, :variation_name, :goal_id, :goal_name,
    :baseline_id, :visitors, :converstions, :conversion_rate, :status,
    :improvement, :confidence, :is_revenue


    def initialize(json)
      @json = json

      @variation_id = json['variation_id']
      @variation_name = json['variation_name']
      @goal_id = json['goal_id']
      @goal_name = json['goal_name']
      @baseline_id = json['baseline_id']
      @visitors = json['visitors']
      @converstions = json['converstions']
      @conversion_rate = json['conversion_rate']
      @status = json['status']
      @improvement = json['improvement']
      @confidence = json['confidence']
      @is_revenue = json['is_revenue']
    end

    def [](x)
      return @json[x]
    end

  end
end
