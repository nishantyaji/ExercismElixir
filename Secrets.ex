require Bitwise

defmodule Secrets do
  def secret_add(secret) do
    fn adder ->
      adder + secret
    end
  end

  def secret_subtract(secret) do
    fn subtractor ->
      subtractor - secret
    end
  end

  def secret_multiply(secret) do
    fn multiplier ->
      multiplier * secret
    end
  end

  def secret_divide(secret) do
    fn secret_divide ->
      trunc(Float.floor(secret_divide / secret, 0))
    end
  end

  def secret_and(secret) do
    fn ander ->
      Bitwise.band(ander, secret)
    end
  end

  def secret_xor(secret) do
    fn ander ->
      Bitwise.bxor(ander, secret)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn combine ->
      secret_function2.(secret_function1.(combine))
    end
  end
end
