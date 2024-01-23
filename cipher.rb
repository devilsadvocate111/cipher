def Operator(original_text, shift)
    converted_text = ""
    original_text.each_char do |character|
        if character.match?(/[a-z]/)
            new_ord = character.ord + (shift % 26)
            if new_ord < 97
                new_ord += 26
            elsif new_ord > 122
                new_ord -= 26
            end
            converted_text << new_ord.chr
        elsif character.match?(/[A-Z]/)
            new_ord = character.ord + (shift % 26)
            if new_ord < 65
                new_ord += 26
            elsif new_ord > 90
                new_ord -= 26
            end
            converted_text << new_ord.chr
        elsif character.match?(/[0-9]/)
            new_ord = character.ord + (shift % 10)
            if new_ord < 48
                new_ord += 10
            elsif new_ord > 57
                new_ord -= 10
            end
            converted_text << new_ord.chr
        else
            converted_text << character
        end
    end
    return converted_text
end