module PgaLeaderboard::Scheduler
  def run
    while true
      yield
      sleep INTERVAL
    end
  end
end
