class Kase
  include Mongoid::Document
  include Mongoid::Timestamps

  field :no, type: String
  field :name, type: String
  field :year, type: String

  has_many :supreme_court_cases, foreign_key: 'kase_id', class_name: 'Courts::Supreme::CaseTitle::Search'

end
