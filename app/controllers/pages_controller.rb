class PagesController < ApplicationController
  def company_home
    @company = Company.first
    jobs = @company.jobs
    students = Student.all

    @target_count = { complete: 0, partial: 0 }

    jobs.each do |job|
      students.each do |student|
        intersection = job.skills & student.skills

        return if intersection.size.zero?

        @target_count[intersection.size == job.skills.size ? :complete : :partial] += 1
      end
    end
  end

  def student_home
  end
end
