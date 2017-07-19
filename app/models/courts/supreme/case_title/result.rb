class Courts::Supreme::CaseTitle::Result
  include Mongoid::Document
  include Mongoid::Timestamps

   field :title, type: String
   field :year, type: String
   field :response_status, type: String
   field :response_body, type: String
  
   belongs_to :search
end
