class ApplicationController < JSONAPI::ResourceController
  private
    def prepare_data dat, resource_type
      ret = []
      dat.each do |result|
        ret.push(resource_type.new(result, {}))
      end
      ret
    end
end
