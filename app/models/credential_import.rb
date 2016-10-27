class CredentialImport
  include ActiveModel::Model

  attr_accessor :file, :expiration

  validates :file, presence: true
  validates :expiration, presence: true
  validate :expiration_date_is_valid_and_in_future

  def import
    return false unless valid?

    CSV.foreach(file.path) do |row|
      Credential.create!(username: row[0], password: row[1], expiration: parsed_expiration)
    end

    return true
  end

  def parsed_expiration
    Chronic.parse(expiration)
  end

  private
    def expiration_date_is_valid_and_in_future
      if expiration.present?
        unless parsed_expiration && parsed_expiration > Date.current
          errors[:expiration] << "Date must be valid and in the future"
        end
      end
    end
end
