module Nlp::Wordseg
  def parse(sentence, feature)
    nm = Natto::MeCab.new
    nm.parse(self.content).map{ |n| "#{n.surface}" if n.feature.match(feature) }
  end
end
