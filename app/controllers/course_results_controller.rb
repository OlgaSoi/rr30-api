class CourseResultsController < ApplicationController
  def index
    puts "***CourseResultsController#index params : #{params}"
    now_t = DateTime.now
    @cr = CourseResult.where('( extract(year from created_at) = ? ) AND
              ( extract(month from created_at) = ? ) AND
              ( extract(day  from created_at) = ? )', now_t.year, now_t.month, now_t.day)
    puts "*** @cr : #{@cr.all()}"

    @serializer = JSONAPI::ResourceSerializer.new(CourseResultResource)
    render json: 
      @serializer.serialize_to_hash(prepare_data(@cr, CourseResultResource))
  end

  def courses_history
    puts "***CourseResultsController#cources_history params : #{params}"
    @cr = CourseResult.order("created_at desc").limit(10)

    @serializer = JSONAPI::ResourceSerializer.new(CourseResultResource)
    render json: 
      @serializer.serialize_to_hash(prepare_data(@cr, CourseResultResource))
  end
end
