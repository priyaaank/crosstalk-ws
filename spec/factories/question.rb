Factory.define :question do |q|
  q.title       "Test Question"
  q.text        "This is a test question that someone from different planet asked us"
  q.asked_date  Time.now
end
