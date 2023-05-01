# @param {Integer[]} salary
# @return {Float}
def average(salary)
  min = salary[0]
  max = salary[0]
  s = 0
  for n in salary
    s = s + n
    min = n if n < min
    max = n if n > max
  end
  s = s - (max + min)
  s.to_f / (salary.length - 2)
end
