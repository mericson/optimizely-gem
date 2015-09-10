module Optimizely
  class Goal

    attr_reader :id, :project_id

    def initialize(json)
      @json = json
      @id = json['id']
      @project_id = json['project_id']
    end

    def [](x)
      return @json[x]
    end

  end
end
