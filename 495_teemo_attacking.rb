def find_poisoned_duration(time_series, duration)
  s = 0
  for i in (0...time_series.length - 1)
    s += (time_series[i+1] - time_series[i] < duration) ? time_series[i+1] - time_series[i] : duration
  end
  s += duration
end
