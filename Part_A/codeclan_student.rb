class CodeclanStudent

attr_accessor :name, :cohort, :message, :language

def initialize(name, cohort, message, language)

  @name = name
  @cohort = cohort
  @message = message
  @language = language
end

def my_fave_language
  return "I love #{@language}"
end

end
