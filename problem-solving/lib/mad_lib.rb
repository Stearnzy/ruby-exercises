class MadLib

  def initialize
    @noun = noun
  end

  def noun(word)
    @noun = word
  end

end

madlib = MadLib.new
madlib.noun("dog")
