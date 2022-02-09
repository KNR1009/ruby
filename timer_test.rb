class TimerBase
  # timer測定用のクラスを作成
  def initialize(minutes:)
    @end_time = Time.now + minutes * 60
  end

  def run
    while @end_time > Time.now
      # 1秒間隔で処理が走る
      sleep 1
      # to_iで秒に換算する
      diff_seconds = @end_time.to_i - Time.now.to_i
      # 残りの分数
      remaining_minites = diff_seconds / 60
      remaining_seconds = format('%02d', diff_seconds - remaining_minites * 60)
      puts "\r#{remaining_minites}:#{remaining_seconds}"
    end
  end
end

