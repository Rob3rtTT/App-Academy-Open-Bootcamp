def all_words_capitalized?(array)
    array.all? {|subarr| subarr[0]==subarr[0].upcase && subarr[1..-1]==subarr[1..-1].downcase}
end

def no_valid_url?(urls)
    domains=[".org",".com",".net",".io"]
    urls.none? do |url|
        domains.any? {|ending| url.end_with?(ending) }
    end
end

students = [
          { name: "Alice", grades: [60, 68] },
          { name: "Bob", grades: [20, 100] }
        ]
def any_passing_students?(students)
    students.any? do |student|
        grades=student[:grades]
        avg = grades.sum / grades.length.to_f
        avg >= 75
    end
end



p any_passing_students?(students)