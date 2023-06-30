class SubString

    def sub_string(word, dictionary)
        hash_to_return = {}
        dictionary.each do |text|
            if word.downcase.include? text.downcase
                hash_to_return[text.downcase] = word.downcase.scan(text.downcase).count
            else
                next
            end
        end
        return hash_to_return
    end
end