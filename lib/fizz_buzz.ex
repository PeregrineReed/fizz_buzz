defmodule FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FizzBuzz.hello()
      :world

  """
  @spec fizzbuzz(integer, integer) :: list
  @spec fizzbuzz(list, list) :: list
  @spec fizzbuzz(list, list) :: list
  @spec fizzbuzz(list) :: list

  defp match?(0, 0, _) do
    "FizzBuzz"
  end

  defp match?(0, _, _) do
    "Fizz"
  end

  defp match?(_, 0, _) do
    "Buzz"
  end

  defp match?(_, _, num) do
    num
  end

  def fizzbuzz(nums) when is_list(nums) do
    x = [match?(rem(hd(nums), 3), rem(hd(nums), 5), hd(nums))]
    fizzbuzz(x, tl(nums))
  end

  def fizzbuzz(fbs, []) do
    fbs
  end

  def fizzbuzz(fbs, nums) when is_list(nums) do
    x = [match?(rem(hd(nums), 3), rem(hd(nums), 5), hd(nums)) | fbs]
    fizzbuzz(x, tl(nums))
  end

  def fizzbuzz(start, finish) do
    Enum.to_list(finish..start)
    |> fizzbuzz
  end

end
