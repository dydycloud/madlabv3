class Beattape
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :source, type: String
  field :author, type: String
end
