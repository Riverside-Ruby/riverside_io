class CredentialNotifierCommand
  def call
    credentials = Credential
    .where("expiration >= ?", 1.week.from_now)
    .where(password_request: nil)

    if credentials.count < Credential::MINIMUM_CREDENTIAL_COUNT
      NotifierMailer.low_inventory_alert.deliver_now
    end
  end
end
