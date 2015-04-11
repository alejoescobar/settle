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
end
