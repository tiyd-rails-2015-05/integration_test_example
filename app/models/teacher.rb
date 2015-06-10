class Teacher < ActiveRecord::Base
  has_many :parents do
    def with_child
      where('child_name != ""')
    end
  end
  # Elsewhere, you can now do...
  # teacher = Teacher.first
  # teacher.parents.with_child

  has_secure_password
end
