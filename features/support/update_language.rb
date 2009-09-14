module Cucumber
  def self.update_language(lang, values)
    Cucumber::LANGUAGES[lang].merge!(values)
    Cucumber::Parser::NaturalLanguage.languages.delete "ja"
    Cucumber::Cli::Main.step_mother.load_natural_language 'ja'
  end
end

# Update language keywords here
keywords = {
  "given" => "Given|Premised",
}
Cucumber.update_language "en", keywords
