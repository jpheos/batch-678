def calcul(number1, number2, ope)
  case ope
  when '+' then number1 + number2
  when '-' then number1 - number2
  when '*' then number1 * number2
  when '/' then number1.to_f / number2
  end
end
