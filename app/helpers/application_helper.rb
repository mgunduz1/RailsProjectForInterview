module ApplicationHelper

    def repeated_chars(input)
        output1 = ''
        output2 = ''
        for n in 0...input.length do
            current = input[n]
            i = output1.index(current)
            
            unless i.nil?
                output1 = output1[(i+1)..-1]
            end

            output1 << current
            output2 = output1 if output1.size > output2.size
        end
        [output2, output2.size]
    end

end
