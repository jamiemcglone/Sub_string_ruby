class SubString

    def sub_string(word, dictionary)
        hash_to_return = {}
        dictionary.each do |text|
            puts(text, word)
            puts(hash_to_return)
            if word.downcase.include?(text.downcase) && hash_to_return.has_key?(text)
                hash_to_return[text] += 1
            elsif word.downcase.include? text.downcase
                hash_to_return[text] = word.downcase.count(text.downcase)
            else
                next
            end
        end
        return hash_to_return
    end
end