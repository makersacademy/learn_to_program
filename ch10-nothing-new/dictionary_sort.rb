def dictionary_sort array
        recursiv_dict_sort array, []
end

def recursive_dict_sort unsorted, sorted
        if unsorted.length <= 0
                return sorted
        end

        smallest_unsorted = unsorted.pop
        still_unsorted = []
        unsorted.each do |tested_object|
                if tested_object.downcase < smallest_unsorted.downcase
                        still_unsorted << smallest_unsorted
                        smallest_unsorted = tested_object
                else
                        still_unsorted.push tested_object
                end
        end

        sorted.push smallest_unsorted
        recursive_dict_sort still_unsorted, sorted
end

