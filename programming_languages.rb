require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_style, style_data|
    style_data.each do |lang_name, name_data|
      if new_hash[lang_name] == true
        new_hash[lang_name][:style] << lang_style
      else
        new_hash[lang_name] = {}
        new_hash[lang_name][:type] = name_data[:type]
        new_hash[lang_name][:style] = [lang_style]
        binding.pry
      end
    end
  end
  new_hash
end
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

reformat_languages(languages)
