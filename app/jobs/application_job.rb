class ApplicationJob < ActiveJob::Bas
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocke

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
end
