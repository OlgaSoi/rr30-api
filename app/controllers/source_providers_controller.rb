class SourceProvidersController < ApplicationController
  def index
    puts "*** SourceProvidersController#index @sp #{@sp}"
    puts "*** params.has_key?(:filter) : #{params.has_key?(:filter)}"
    cond = {:active => true}
    cond[:id] = params[:filter][:id] if params.has_key?(:filter) and params[:filter].has_key?(:id) 
    @sp = SourceProvider.where(cond)
    
    @serializer = JSONAPI::ResourceSerializer.new(SourceProviderResource)
    render json: 
      @serializer.serialize_to_hash(prepare_data(@sp, SourceProviderResource))
  end

end
