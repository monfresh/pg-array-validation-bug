class Location < ActiveRecord::Base
  attr_accessible :languages, :emails

  serialize :languages, Array

  validate :language_format, :email_format

  def language_format
    if languages.present? && !languages.is_a?(Array)
      errors[:base] << "Languages must be an array."
    end
  end

  def email_format
    if emails.present? && !emails.is_a?(Array)
      errors[:base] << "Emails must be an array."
    end
  end
end
