FactoryGirl.define do
  factory :show do
    where 'The Moda Center'
    add_attribute(:when) { DateTime.new(2017,3,20,4,5,6) }
  end
end
