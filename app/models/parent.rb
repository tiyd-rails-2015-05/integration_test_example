class Parent < ActiveRecord::Base

  default_scope {order(:child_name)}

  # scope :with_email, -> {where('email != ""')}

  # This is the same as the `scope` line above
  def self.with_email
    self.where('email != ""')
  end
end
