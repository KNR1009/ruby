class TimerBase
  def initialize(minutes:)
    # 計りたい分に応じた残り時間
    @end_time = Time.now + minutes * 60
  end

  def run
    # 現在の時刻が終了時刻よりも小さくなったら処理を終わる
    while Time.now < @end_time
      sleep 1
      # to_iで今の時刻と終わりの時刻の差分(秒)を計算
      diff_seconds = @end_time.to_i - Time.now.to_i
      remaining_minites = diff_seconds / 60
      # 2桁のゼロ埋め
      remaining_seconds = format('%02d', diff_seconds - (remaining_minites * 60))
      print "\r#{remaining_minites}:#{remaining_seconds}"
    end
  end

end

test = TimerBase.new
test.run