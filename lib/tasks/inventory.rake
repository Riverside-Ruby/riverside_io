namespace :inventory do
  desc "Send an alert when low on inventory"
  task low_alert: :environment do
    CredentialNotifierCommand.new.call
  end
end
