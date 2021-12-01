class Bootcamp
    #should accept a name,slogan, student_capacity
    def initialize(name,slogan,student_capacity)
        #should set the instance variables name, slogan, student_capacity
        @name=name
        @slogan=slogan
        @student_capacity=student_capacity
        # should set the instance variables @teachers and @students to empty arrays   
        @teachers = []
        @students = []
        # should set the instance variable @grades to an empty hash where the default values are distinct empty arrays
        @grades = Hash.new { |student,grade| student[grade] = []}
    end
    
    #should get the bootcamps @name
    def name
        @name
    end

    #should get (return) the bootcamp's @slogan
    def slogan
        @slogan
    end

    #should get (return) the bootcamp's @teachers
    def teachers
        @teachers
    end

    #should get (return) the bootcamp's @students
    def students
        @students
    end

    #should accept a teacher (string) and add them to the end of @teachers
    def hire(teacher)
        @teachers<<teacher
    end

    #should accept a student (string) as an arg
    def enroll(student)
        if @students.length < @student_capacity
            @students<<student
            true
        else
            false
        end
    end

    #should accept a student (string) and return a boolean indicating whether the student is enrolled in the bootcamp
    def enrolled?(student)
        @students.include?(student)
    end

    #part2
    #should return an integer representing the ratio between # students to 1 teacher rounded down to the nearest integer
    def student_to_teacher_ratio
        student_to_teacher_ratio = @students.length / teachers.length
        student_to_teacher_ratio
    end

    #should accept a student (string) and a grade (number) and add that grade to the student's grades array inside of the @grades hash
    def add_grade(student,grade)
        if @students.include?(student)
            @grades[student]<<grade
            true
        else
            false
        end
    end

    #should accept a student (string) and return the number of grades they have
    def num_grades(student)
        @grades[student].length
    end

    #should accept a student (string) and return a number representing their average grade rounded down to the nearest integer
    def average_grade(student)
        if !(@students.include?(student)) || (@grades[student].empty?)
            nil
        else
            avg = @grades[student].sum / @grades[student].length
            avg
        end
    end

        
end
