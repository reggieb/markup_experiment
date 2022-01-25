Seeder = Dibber::Seeder

Seeder.seed Answer, :content

Seeder.monitor Question
Seeder.objects_from("questions.yml").each do |name, attributes|
  question = Question.find_or_initialize_by(name: name)
  attributes['answers'].map! {|a| Answer.find_by(name: a)}
  question.update(attributes)
end

Seeder.monitor Questionnaire
Seeder.objects_from("questionnaires.yml").each do |name, attributes|
  questionnaire = Questionnaire.find_or_initialize_by(name: name)
  attributes['questions'].map! { |q| Question.find_by(name: q) }
  questionnaire.update(attributes)
end

puts Seeder.report
