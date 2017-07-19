class Courts::Supreme::CaseTitle::Search
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :year, type: String
  field :status, type: String
  field :kase_id, type: String
  
  has_many :results, foreign_key: 'search_id', class_name: 'Courts::Supreme::CaseTitle::Result'

  belongs_to :kase
end
