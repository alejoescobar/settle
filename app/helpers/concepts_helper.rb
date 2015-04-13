module ConceptsHelper
  def data_organizer
      result = [{"name":"Easy","data":{"Difficulty":0}}, {"name":"Medium","data":{"Difficulty":0}}, {"name":"Hard","data":{"Difficulty":0}}]
      concept_data = Concept.group(:difficulty).where(user_id: current_user).count
      concept_data.each do |key, value|
        if key == 0
          result[0] = {"name":"Easy","data":{"Difficulty": concept_data[key]}}
        elsif key == 1
          result[1] = {"name":"Medium","data":{"Difficulty": concept_data[key]}}
        elsif key == 2
          result[2] = {"name":"Hard","data":{"Difficulty": concept_data[key]}}
        end 
      end
      result
  end

  def daily_average
    # init_time = Time.at(current_user.created_at)
    init_time = Time.at(Concept.order("created_at").first.created_at)
    last_time = Time.now
    days = (last_time - init_time)/(24*60*60)
    average = Concept.all.count/days
    average.round
  end

  def daily_concepts(start = Concept.order("created_at").first.created_at)
      (start.to_date..Date.today).map do |date|
       {
         label: date,
         y: Concept.where(created_at: date.beginning_of_day..date.end_of_day)
       }
     end
  end

  def daily_streak
    counter = 0
    daily_concepts.each do |concept|
      concept_array = concept[:y].each{ |x| puts x }
      if concept_array.empty?
        counter = 0
      else
        counter += 1
      end
    end
    counter
  end
end
