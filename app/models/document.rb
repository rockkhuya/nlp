class Document
  include Mongoid::Document
  field :title, type: String
  field :content, type: String

  after_create :natto

  def natto
    nm = Natto::MeCab.new
    nm.parse(self.content) do |n|
      puts "#{n.surface}" # if n.feature.match("名詞")
    end
  end
end
