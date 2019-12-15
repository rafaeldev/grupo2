module JobsFulfilled
  module_function

  def list(company:)
    jobs = company.jobs
    students = Student.all

    jobs_joined = []

    jobs.each do |job|
      students.each do |student|
        intersection = job.skills & student.skills

        jobs_joined << { job: job, student: student } if intersection.size == job.skills.size
      end
    end

    jobs_joined
  end
end
