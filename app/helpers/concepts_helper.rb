module ConceptsHelper
  def data_organizer
      result = []
      concept_data = Concept.group(:difficulty).count
      concept_data.each do |key, value|
        if key == 0
          easy = {"name":"Easy","data":{"Difficulty": concept_data[key]}}
          result.push(easy)
        elsif key == 1
          medium = {"name":"Medium","data":{"Difficulty": concept_data[key]}}
          result.push(medium)
        elsif key == 2
          difficult = {"name":"Hard","data":{"Difficulty": concept_data[key]}}
          result.push(difficult)
        end
      end
      result  
  end

  # def daily_average
  #   init_time = Time.at(current_user.created_at)
  #   last_time = Time.now
  #   average = (last_time - init_time)/(24*60*60)
  #   average.round
  # end

  def daily_concepts
    Concept.where('created_at BETWEEN ? AND ?', DateTime.now.in_time_zone.beginning_of_month, DateTime.now.in_time_zone.end_of_month)
  end
end
