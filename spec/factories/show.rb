FactoryGirl.define do
  factory :show do
    where 'The Moda Center'
    add_attribute(:performance_date) { DateTime.new(2017,3,20,4,5,6) }
  end
end
