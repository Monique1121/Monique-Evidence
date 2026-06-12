# Large Test File 08: list operations
# Arantza Monique Mercado Moreno
# TC2037 - Evidence 2

defmodule LargeLists08 do
  @moduledoc "Large test module 8 for benchmarking parallel syntax highlighting"
  @version "1.0.8"
  @debug false
  @max_value 1000


  def flatten_1([]), do: []
  def flatten_1([head | tail]) when is_list(head), do: flatten_1(head) ++ flatten_1(tail)
  def flatten_1([head | tail]), do: [head | flatten_1(tail)]
  def take_1(_, 0), do: []
  def take_1([], _), do: []
  def take_1([head | tail], n), do: [head | take_1(tail, n - 1)]
  def drop_1(list, 0), do: list
  def drop_1([], _), do: []
  def drop_1([_ | tail], n), do: drop_1(tail, n - 1)
  def rotate_1([], _), do: []
  def rotate_1(list, 0), do: list
  def rotate_1([head | tail], n) when n > 0, do: rotate_1(tail ++ [head], n - 1)
  def count_1(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_2([]), do: []
  def flatten_2([head | tail]) when is_list(head), do: flatten_2(head) ++ flatten_2(tail)
  def flatten_2([head | tail]), do: [head | flatten_2(tail)]
  def take_2(_, 0), do: []
  def take_2([], _), do: []
  def take_2([head | tail], n), do: [head | take_2(tail, n - 1)]
  def drop_2(list, 0), do: list
  def drop_2([], _), do: []
  def drop_2([_ | tail], n), do: drop_2(tail, n - 1)
  def rotate_2([], _), do: []
  def rotate_2(list, 0), do: list
  def rotate_2([head | tail], n) when n > 0, do: rotate_2(tail ++ [head], n - 1)
  def count_2(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_3([]), do: []
  def flatten_3([head | tail]) when is_list(head), do: flatten_3(head) ++ flatten_3(tail)
  def flatten_3([head | tail]), do: [head | flatten_3(tail)]
  def take_3(_, 0), do: []
  def take_3([], _), do: []
  def take_3([head | tail], n), do: [head | take_3(tail, n - 1)]
  def drop_3(list, 0), do: list
  def drop_3([], _), do: []
  def drop_3([_ | tail], n), do: drop_3(tail, n - 1)
  def rotate_3([], _), do: []
  def rotate_3(list, 0), do: list
  def rotate_3([head | tail], n) when n > 0, do: rotate_3(tail ++ [head], n - 1)
  def count_3(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_4([]), do: []
  def flatten_4([head | tail]) when is_list(head), do: flatten_4(head) ++ flatten_4(tail)
  def flatten_4([head | tail]), do: [head | flatten_4(tail)]
  def take_4(_, 0), do: []
  def take_4([], _), do: []
  def take_4([head | tail], n), do: [head | take_4(tail, n - 1)]
  def drop_4(list, 0), do: list
  def drop_4([], _), do: []
  def drop_4([_ | tail], n), do: drop_4(tail, n - 1)
  def rotate_4([], _), do: []
  def rotate_4(list, 0), do: list
  def rotate_4([head | tail], n) when n > 0, do: rotate_4(tail ++ [head], n - 1)
  def count_4(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_5([]), do: []
  def flatten_5([head | tail]) when is_list(head), do: flatten_5(head) ++ flatten_5(tail)
  def flatten_5([head | tail]), do: [head | flatten_5(tail)]
  def take_5(_, 0), do: []
  def take_5([], _), do: []
  def take_5([head | tail], n), do: [head | take_5(tail, n - 1)]
  def drop_5(list, 0), do: list
  def drop_5([], _), do: []
  def drop_5([_ | tail], n), do: drop_5(tail, n - 1)
  def rotate_5([], _), do: []
  def rotate_5(list, 0), do: list
  def rotate_5([head | tail], n) when n > 0, do: rotate_5(tail ++ [head], n - 1)
  def count_5(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_6([]), do: []
  def flatten_6([head | tail]) when is_list(head), do: flatten_6(head) ++ flatten_6(tail)
  def flatten_6([head | tail]), do: [head | flatten_6(tail)]
  def take_6(_, 0), do: []
  def take_6([], _), do: []
  def take_6([head | tail], n), do: [head | take_6(tail, n - 1)]
  def drop_6(list, 0), do: list
  def drop_6([], _), do: []
  def drop_6([_ | tail], n), do: drop_6(tail, n - 1)
  def rotate_6([], _), do: []
  def rotate_6(list, 0), do: list
  def rotate_6([head | tail], n) when n > 0, do: rotate_6(tail ++ [head], n - 1)
  def count_6(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_7([]), do: []
  def flatten_7([head | tail]) when is_list(head), do: flatten_7(head) ++ flatten_7(tail)
  def flatten_7([head | tail]), do: [head | flatten_7(tail)]
  def take_7(_, 0), do: []
  def take_7([], _), do: []
  def take_7([head | tail], n), do: [head | take_7(tail, n - 1)]
  def drop_7(list, 0), do: list
  def drop_7([], _), do: []
  def drop_7([_ | tail], n), do: drop_7(tail, n - 1)
  def rotate_7([], _), do: []
  def rotate_7(list, 0), do: list
  def rotate_7([head | tail], n) when n > 0, do: rotate_7(tail ++ [head], n - 1)
  def count_7(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_8([]), do: []
  def flatten_8([head | tail]) when is_list(head), do: flatten_8(head) ++ flatten_8(tail)
  def flatten_8([head | tail]), do: [head | flatten_8(tail)]
  def take_8(_, 0), do: []
  def take_8([], _), do: []
  def take_8([head | tail], n), do: [head | take_8(tail, n - 1)]
  def drop_8(list, 0), do: list
  def drop_8([], _), do: []
  def drop_8([_ | tail], n), do: drop_8(tail, n - 1)
  def rotate_8([], _), do: []
  def rotate_8(list, 0), do: list
  def rotate_8([head | tail], n) when n > 0, do: rotate_8(tail ++ [head], n - 1)
  def count_8(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_9([]), do: []
  def flatten_9([head | tail]) when is_list(head), do: flatten_9(head) ++ flatten_9(tail)
  def flatten_9([head | tail]), do: [head | flatten_9(tail)]
  def take_9(_, 0), do: []
  def take_9([], _), do: []
  def take_9([head | tail], n), do: [head | take_9(tail, n - 1)]
  def drop_9(list, 0), do: list
  def drop_9([], _), do: []
  def drop_9([_ | tail], n), do: drop_9(tail, n - 1)
  def rotate_9([], _), do: []
  def rotate_9(list, 0), do: list
  def rotate_9([head | tail], n) when n > 0, do: rotate_9(tail ++ [head], n - 1)
  def count_9(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_10([]), do: []
  def flatten_10([head | tail]) when is_list(head), do: flatten_10(head) ++ flatten_10(tail)
  def flatten_10([head | tail]), do: [head | flatten_10(tail)]
  def take_10(_, 0), do: []
  def take_10([], _), do: []
  def take_10([head | tail], n), do: [head | take_10(tail, n - 1)]
  def drop_10(list, 0), do: list
  def drop_10([], _), do: []
  def drop_10([_ | tail], n), do: drop_10(tail, n - 1)
  def rotate_10([], _), do: []
  def rotate_10(list, 0), do: list
  def rotate_10([head | tail], n) when n > 0, do: rotate_10(tail ++ [head], n - 1)
  def count_10(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_11([]), do: []
  def flatten_11([head | tail]) when is_list(head), do: flatten_11(head) ++ flatten_11(tail)
  def flatten_11([head | tail]), do: [head | flatten_11(tail)]
  def take_11(_, 0), do: []
  def take_11([], _), do: []
  def take_11([head | tail], n), do: [head | take_11(tail, n - 1)]
  def drop_11(list, 0), do: list
  def drop_11([], _), do: []
  def drop_11([_ | tail], n), do: drop_11(tail, n - 1)
  def rotate_11([], _), do: []
  def rotate_11(list, 0), do: list
  def rotate_11([head | tail], n) when n > 0, do: rotate_11(tail ++ [head], n - 1)
  def count_11(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_12([]), do: []
  def flatten_12([head | tail]) when is_list(head), do: flatten_12(head) ++ flatten_12(tail)
  def flatten_12([head | tail]), do: [head | flatten_12(tail)]
  def take_12(_, 0), do: []
  def take_12([], _), do: []
  def take_12([head | tail], n), do: [head | take_12(tail, n - 1)]
  def drop_12(list, 0), do: list
  def drop_12([], _), do: []
  def drop_12([_ | tail], n), do: drop_12(tail, n - 1)
  def rotate_12([], _), do: []
  def rotate_12(list, 0), do: list
  def rotate_12([head | tail], n) when n > 0, do: rotate_12(tail ++ [head], n - 1)
  def count_12(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_13([]), do: []
  def flatten_13([head | tail]) when is_list(head), do: flatten_13(head) ++ flatten_13(tail)
  def flatten_13([head | tail]), do: [head | flatten_13(tail)]
  def take_13(_, 0), do: []
  def take_13([], _), do: []
  def take_13([head | tail], n), do: [head | take_13(tail, n - 1)]
  def drop_13(list, 0), do: list
  def drop_13([], _), do: []
  def drop_13([_ | tail], n), do: drop_13(tail, n - 1)
  def rotate_13([], _), do: []
  def rotate_13(list, 0), do: list
  def rotate_13([head | tail], n) when n > 0, do: rotate_13(tail ++ [head], n - 1)
  def count_13(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_14([]), do: []
  def flatten_14([head | tail]) when is_list(head), do: flatten_14(head) ++ flatten_14(tail)
  def flatten_14([head | tail]), do: [head | flatten_14(tail)]
  def take_14(_, 0), do: []
  def take_14([], _), do: []
  def take_14([head | tail], n), do: [head | take_14(tail, n - 1)]
  def drop_14(list, 0), do: list
  def drop_14([], _), do: []
  def drop_14([_ | tail], n), do: drop_14(tail, n - 1)
  def rotate_14([], _), do: []
  def rotate_14(list, 0), do: list
  def rotate_14([head | tail], n) when n > 0, do: rotate_14(tail ++ [head], n - 1)
  def count_14(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_15([]), do: []
  def flatten_15([head | tail]) when is_list(head), do: flatten_15(head) ++ flatten_15(tail)
  def flatten_15([head | tail]), do: [head | flatten_15(tail)]
  def take_15(_, 0), do: []
  def take_15([], _), do: []
  def take_15([head | tail], n), do: [head | take_15(tail, n - 1)]
  def drop_15(list, 0), do: list
  def drop_15([], _), do: []
  def drop_15([_ | tail], n), do: drop_15(tail, n - 1)
  def rotate_15([], _), do: []
  def rotate_15(list, 0), do: list
  def rotate_15([head | tail], n) when n > 0, do: rotate_15(tail ++ [head], n - 1)
  def count_15(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_16([]), do: []
  def flatten_16([head | tail]) when is_list(head), do: flatten_16(head) ++ flatten_16(tail)
  def flatten_16([head | tail]), do: [head | flatten_16(tail)]
  def take_16(_, 0), do: []
  def take_16([], _), do: []
  def take_16([head | tail], n), do: [head | take_16(tail, n - 1)]
  def drop_16(list, 0), do: list
  def drop_16([], _), do: []
  def drop_16([_ | tail], n), do: drop_16(tail, n - 1)
  def rotate_16([], _), do: []
  def rotate_16(list, 0), do: list
  def rotate_16([head | tail], n) when n > 0, do: rotate_16(tail ++ [head], n - 1)
  def count_16(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_17([]), do: []
  def flatten_17([head | tail]) when is_list(head), do: flatten_17(head) ++ flatten_17(tail)
  def flatten_17([head | tail]), do: [head | flatten_17(tail)]
  def take_17(_, 0), do: []
  def take_17([], _), do: []
  def take_17([head | tail], n), do: [head | take_17(tail, n - 1)]
  def drop_17(list, 0), do: list
  def drop_17([], _), do: []
  def drop_17([_ | tail], n), do: drop_17(tail, n - 1)
  def rotate_17([], _), do: []
  def rotate_17(list, 0), do: list
  def rotate_17([head | tail], n) when n > 0, do: rotate_17(tail ++ [head], n - 1)
  def count_17(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_18([]), do: []
  def flatten_18([head | tail]) when is_list(head), do: flatten_18(head) ++ flatten_18(tail)
  def flatten_18([head | tail]), do: [head | flatten_18(tail)]
  def take_18(_, 0), do: []
  def take_18([], _), do: []
  def take_18([head | tail], n), do: [head | take_18(tail, n - 1)]
  def drop_18(list, 0), do: list
  def drop_18([], _), do: []
  def drop_18([_ | tail], n), do: drop_18(tail, n - 1)
  def rotate_18([], _), do: []
  def rotate_18(list, 0), do: list
  def rotate_18([head | tail], n) when n > 0, do: rotate_18(tail ++ [head], n - 1)
  def count_18(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_19([]), do: []
  def flatten_19([head | tail]) when is_list(head), do: flatten_19(head) ++ flatten_19(tail)
  def flatten_19([head | tail]), do: [head | flatten_19(tail)]
  def take_19(_, 0), do: []
  def take_19([], _), do: []
  def take_19([head | tail], n), do: [head | take_19(tail, n - 1)]
  def drop_19(list, 0), do: list
  def drop_19([], _), do: []
  def drop_19([_ | tail], n), do: drop_19(tail, n - 1)
  def rotate_19([], _), do: []
  def rotate_19(list, 0), do: list
  def rotate_19([head | tail], n) when n > 0, do: rotate_19(tail ++ [head], n - 1)
  def count_19(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_20([]), do: []
  def flatten_20([head | tail]) when is_list(head), do: flatten_20(head) ++ flatten_20(tail)
  def flatten_20([head | tail]), do: [head | flatten_20(tail)]
  def take_20(_, 0), do: []
  def take_20([], _), do: []
  def take_20([head | tail], n), do: [head | take_20(tail, n - 1)]
  def drop_20(list, 0), do: list
  def drop_20([], _), do: []
  def drop_20([_ | tail], n), do: drop_20(tail, n - 1)
  def rotate_20([], _), do: []
  def rotate_20(list, 0), do: list
  def rotate_20([head | tail], n) when n > 0, do: rotate_20(tail ++ [head], n - 1)
  def count_20(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_21([]), do: []
  def flatten_21([head | tail]) when is_list(head), do: flatten_21(head) ++ flatten_21(tail)
  def flatten_21([head | tail]), do: [head | flatten_21(tail)]
  def take_21(_, 0), do: []
  def take_21([], _), do: []
  def take_21([head | tail], n), do: [head | take_21(tail, n - 1)]
  def drop_21(list, 0), do: list
  def drop_21([], _), do: []
  def drop_21([_ | tail], n), do: drop_21(tail, n - 1)
  def rotate_21([], _), do: []
  def rotate_21(list, 0), do: list
  def rotate_21([head | tail], n) when n > 0, do: rotate_21(tail ++ [head], n - 1)
  def count_21(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_22([]), do: []
  def flatten_22([head | tail]) when is_list(head), do: flatten_22(head) ++ flatten_22(tail)
  def flatten_22([head | tail]), do: [head | flatten_22(tail)]
  def take_22(_, 0), do: []
  def take_22([], _), do: []
  def take_22([head | tail], n), do: [head | take_22(tail, n - 1)]
  def drop_22(list, 0), do: list
  def drop_22([], _), do: []
  def drop_22([_ | tail], n), do: drop_22(tail, n - 1)
  def rotate_22([], _), do: []
  def rotate_22(list, 0), do: list
  def rotate_22([head | tail], n) when n > 0, do: rotate_22(tail ++ [head], n - 1)
  def count_22(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_23([]), do: []
  def flatten_23([head | tail]) when is_list(head), do: flatten_23(head) ++ flatten_23(tail)
  def flatten_23([head | tail]), do: [head | flatten_23(tail)]
  def take_23(_, 0), do: []
  def take_23([], _), do: []
  def take_23([head | tail], n), do: [head | take_23(tail, n - 1)]
  def drop_23(list, 0), do: list
  def drop_23([], _), do: []
  def drop_23([_ | tail], n), do: drop_23(tail, n - 1)
  def rotate_23([], _), do: []
  def rotate_23(list, 0), do: list
  def rotate_23([head | tail], n) when n > 0, do: rotate_23(tail ++ [head], n - 1)
  def count_23(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_24([]), do: []
  def flatten_24([head | tail]) when is_list(head), do: flatten_24(head) ++ flatten_24(tail)
  def flatten_24([head | tail]), do: [head | flatten_24(tail)]
  def take_24(_, 0), do: []
  def take_24([], _), do: []
  def take_24([head | tail], n), do: [head | take_24(tail, n - 1)]
  def drop_24(list, 0), do: list
  def drop_24([], _), do: []
  def drop_24([_ | tail], n), do: drop_24(tail, n - 1)
  def rotate_24([], _), do: []
  def rotate_24(list, 0), do: list
  def rotate_24([head | tail], n) when n > 0, do: rotate_24(tail ++ [head], n - 1)
  def count_24(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_25([]), do: []
  def flatten_25([head | tail]) when is_list(head), do: flatten_25(head) ++ flatten_25(tail)
  def flatten_25([head | tail]), do: [head | flatten_25(tail)]
  def take_25(_, 0), do: []
  def take_25([], _), do: []
  def take_25([head | tail], n), do: [head | take_25(tail, n - 1)]
  def drop_25(list, 0), do: list
  def drop_25([], _), do: []
  def drop_25([_ | tail], n), do: drop_25(tail, n - 1)
  def rotate_25([], _), do: []
  def rotate_25(list, 0), do: list
  def rotate_25([head | tail], n) when n > 0, do: rotate_25(tail ++ [head], n - 1)
  def count_25(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_26([]), do: []
  def flatten_26([head | tail]) when is_list(head), do: flatten_26(head) ++ flatten_26(tail)
  def flatten_26([head | tail]), do: [head | flatten_26(tail)]
  def take_26(_, 0), do: []
  def take_26([], _), do: []
  def take_26([head | tail], n), do: [head | take_26(tail, n - 1)]
  def drop_26(list, 0), do: list
  def drop_26([], _), do: []
  def drop_26([_ | tail], n), do: drop_26(tail, n - 1)
  def rotate_26([], _), do: []
  def rotate_26(list, 0), do: list
  def rotate_26([head | tail], n) when n > 0, do: rotate_26(tail ++ [head], n - 1)
  def count_26(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_27([]), do: []
  def flatten_27([head | tail]) when is_list(head), do: flatten_27(head) ++ flatten_27(tail)
  def flatten_27([head | tail]), do: [head | flatten_27(tail)]
  def take_27(_, 0), do: []
  def take_27([], _), do: []
  def take_27([head | tail], n), do: [head | take_27(tail, n - 1)]
  def drop_27(list, 0), do: list
  def drop_27([], _), do: []
  def drop_27([_ | tail], n), do: drop_27(tail, n - 1)
  def rotate_27([], _), do: []
  def rotate_27(list, 0), do: list
  def rotate_27([head | tail], n) when n > 0, do: rotate_27(tail ++ [head], n - 1)
  def count_27(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_28([]), do: []
  def flatten_28([head | tail]) when is_list(head), do: flatten_28(head) ++ flatten_28(tail)
  def flatten_28([head | tail]), do: [head | flatten_28(tail)]
  def take_28(_, 0), do: []
  def take_28([], _), do: []
  def take_28([head | tail], n), do: [head | take_28(tail, n - 1)]
  def drop_28(list, 0), do: list
  def drop_28([], _), do: []
  def drop_28([_ | tail], n), do: drop_28(tail, n - 1)
  def rotate_28([], _), do: []
  def rotate_28(list, 0), do: list
  def rotate_28([head | tail], n) when n > 0, do: rotate_28(tail ++ [head], n - 1)
  def count_28(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_29([]), do: []
  def flatten_29([head | tail]) when is_list(head), do: flatten_29(head) ++ flatten_29(tail)
  def flatten_29([head | tail]), do: [head | flatten_29(tail)]
  def take_29(_, 0), do: []
  def take_29([], _), do: []
  def take_29([head | tail], n), do: [head | take_29(tail, n - 1)]
  def drop_29(list, 0), do: list
  def drop_29([], _), do: []
  def drop_29([_ | tail], n), do: drop_29(tail, n - 1)
  def rotate_29([], _), do: []
  def rotate_29(list, 0), do: list
  def rotate_29([head | tail], n) when n > 0, do: rotate_29(tail ++ [head], n - 1)
  def count_29(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_30([]), do: []
  def flatten_30([head | tail]) when is_list(head), do: flatten_30(head) ++ flatten_30(tail)
  def flatten_30([head | tail]), do: [head | flatten_30(tail)]
  def take_30(_, 0), do: []
  def take_30([], _), do: []
  def take_30([head | tail], n), do: [head | take_30(tail, n - 1)]
  def drop_30(list, 0), do: list
  def drop_30([], _), do: []
  def drop_30([_ | tail], n), do: drop_30(tail, n - 1)
  def rotate_30([], _), do: []
  def rotate_30(list, 0), do: list
  def rotate_30([head | tail], n) when n > 0, do: rotate_30(tail ++ [head], n - 1)
  def count_30(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_31([]), do: []
  def flatten_31([head | tail]) when is_list(head), do: flatten_31(head) ++ flatten_31(tail)
  def flatten_31([head | tail]), do: [head | flatten_31(tail)]
  def take_31(_, 0), do: []
  def take_31([], _), do: []
  def take_31([head | tail], n), do: [head | take_31(tail, n - 1)]
  def drop_31(list, 0), do: list
  def drop_31([], _), do: []
  def drop_31([_ | tail], n), do: drop_31(tail, n - 1)
  def rotate_31([], _), do: []
  def rotate_31(list, 0), do: list
  def rotate_31([head | tail], n) when n > 0, do: rotate_31(tail ++ [head], n - 1)
  def count_31(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_32([]), do: []
  def flatten_32([head | tail]) when is_list(head), do: flatten_32(head) ++ flatten_32(tail)
  def flatten_32([head | tail]), do: [head | flatten_32(tail)]
  def take_32(_, 0), do: []
  def take_32([], _), do: []
  def take_32([head | tail], n), do: [head | take_32(tail, n - 1)]
  def drop_32(list, 0), do: list
  def drop_32([], _), do: []
  def drop_32([_ | tail], n), do: drop_32(tail, n - 1)
  def rotate_32([], _), do: []
  def rotate_32(list, 0), do: list
  def rotate_32([head | tail], n) when n > 0, do: rotate_32(tail ++ [head], n - 1)
  def count_32(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_33([]), do: []
  def flatten_33([head | tail]) when is_list(head), do: flatten_33(head) ++ flatten_33(tail)
  def flatten_33([head | tail]), do: [head | flatten_33(tail)]
  def take_33(_, 0), do: []
  def take_33([], _), do: []
  def take_33([head | tail], n), do: [head | take_33(tail, n - 1)]
  def drop_33(list, 0), do: list
  def drop_33([], _), do: []
  def drop_33([_ | tail], n), do: drop_33(tail, n - 1)
  def rotate_33([], _), do: []
  def rotate_33(list, 0), do: list
  def rotate_33([head | tail], n) when n > 0, do: rotate_33(tail ++ [head], n - 1)
  def count_33(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_34([]), do: []
  def flatten_34([head | tail]) when is_list(head), do: flatten_34(head) ++ flatten_34(tail)
  def flatten_34([head | tail]), do: [head | flatten_34(tail)]
  def take_34(_, 0), do: []
  def take_34([], _), do: []
  def take_34([head | tail], n), do: [head | take_34(tail, n - 1)]
  def drop_34(list, 0), do: list
  def drop_34([], _), do: []
  def drop_34([_ | tail], n), do: drop_34(tail, n - 1)
  def rotate_34([], _), do: []
  def rotate_34(list, 0), do: list
  def rotate_34([head | tail], n) when n > 0, do: rotate_34(tail ++ [head], n - 1)
  def count_34(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_35([]), do: []
  def flatten_35([head | tail]) when is_list(head), do: flatten_35(head) ++ flatten_35(tail)
  def flatten_35([head | tail]), do: [head | flatten_35(tail)]
  def take_35(_, 0), do: []
  def take_35([], _), do: []
  def take_35([head | tail], n), do: [head | take_35(tail, n - 1)]
  def drop_35(list, 0), do: list
  def drop_35([], _), do: []
  def drop_35([_ | tail], n), do: drop_35(tail, n - 1)
  def rotate_35([], _), do: []
  def rotate_35(list, 0), do: list
  def rotate_35([head | tail], n) when n > 0, do: rotate_35(tail ++ [head], n - 1)
  def count_35(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_36([]), do: []
  def flatten_36([head | tail]) when is_list(head), do: flatten_36(head) ++ flatten_36(tail)
  def flatten_36([head | tail]), do: [head | flatten_36(tail)]
  def take_36(_, 0), do: []
  def take_36([], _), do: []
  def take_36([head | tail], n), do: [head | take_36(tail, n - 1)]
  def drop_36(list, 0), do: list
  def drop_36([], _), do: []
  def drop_36([_ | tail], n), do: drop_36(tail, n - 1)
  def rotate_36([], _), do: []
  def rotate_36(list, 0), do: list
  def rotate_36([head | tail], n) when n > 0, do: rotate_36(tail ++ [head], n - 1)
  def count_36(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_37([]), do: []
  def flatten_37([head | tail]) when is_list(head), do: flatten_37(head) ++ flatten_37(tail)
  def flatten_37([head | tail]), do: [head | flatten_37(tail)]
  def take_37(_, 0), do: []
  def take_37([], _), do: []
  def take_37([head | tail], n), do: [head | take_37(tail, n - 1)]
  def drop_37(list, 0), do: list
  def drop_37([], _), do: []
  def drop_37([_ | tail], n), do: drop_37(tail, n - 1)
  def rotate_37([], _), do: []
  def rotate_37(list, 0), do: list
  def rotate_37([head | tail], n) when n > 0, do: rotate_37(tail ++ [head], n - 1)
  def count_37(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_38([]), do: []
  def flatten_38([head | tail]) when is_list(head), do: flatten_38(head) ++ flatten_38(tail)
  def flatten_38([head | tail]), do: [head | flatten_38(tail)]
  def take_38(_, 0), do: []
  def take_38([], _), do: []
  def take_38([head | tail], n), do: [head | take_38(tail, n - 1)]
  def drop_38(list, 0), do: list
  def drop_38([], _), do: []
  def drop_38([_ | tail], n), do: drop_38(tail, n - 1)
  def rotate_38([], _), do: []
  def rotate_38(list, 0), do: list
  def rotate_38([head | tail], n) when n > 0, do: rotate_38(tail ++ [head], n - 1)
  def count_38(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_39([]), do: []
  def flatten_39([head | tail]) when is_list(head), do: flatten_39(head) ++ flatten_39(tail)
  def flatten_39([head | tail]), do: [head | flatten_39(tail)]
  def take_39(_, 0), do: []
  def take_39([], _), do: []
  def take_39([head | tail], n), do: [head | take_39(tail, n - 1)]
  def drop_39(list, 0), do: list
  def drop_39([], _), do: []
  def drop_39([_ | tail], n), do: drop_39(tail, n - 1)
  def rotate_39([], _), do: []
  def rotate_39(list, 0), do: list
  def rotate_39([head | tail], n) when n > 0, do: rotate_39(tail ++ [head], n - 1)
  def count_39(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_40([]), do: []
  def flatten_40([head | tail]) when is_list(head), do: flatten_40(head) ++ flatten_40(tail)
  def flatten_40([head | tail]), do: [head | flatten_40(tail)]
  def take_40(_, 0), do: []
  def take_40([], _), do: []
  def take_40([head | tail], n), do: [head | take_40(tail, n - 1)]
  def drop_40(list, 0), do: list
  def drop_40([], _), do: []
  def drop_40([_ | tail], n), do: drop_40(tail, n - 1)
  def rotate_40([], _), do: []
  def rotate_40(list, 0), do: list
  def rotate_40([head | tail], n) when n > 0, do: rotate_40(tail ++ [head], n - 1)
  def count_40(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_41([]), do: []
  def flatten_41([head | tail]) when is_list(head), do: flatten_41(head) ++ flatten_41(tail)
  def flatten_41([head | tail]), do: [head | flatten_41(tail)]
  def take_41(_, 0), do: []
  def take_41([], _), do: []
  def take_41([head | tail], n), do: [head | take_41(tail, n - 1)]
  def drop_41(list, 0), do: list
  def drop_41([], _), do: []
  def drop_41([_ | tail], n), do: drop_41(tail, n - 1)
  def rotate_41([], _), do: []
  def rotate_41(list, 0), do: list
  def rotate_41([head | tail], n) when n > 0, do: rotate_41(tail ++ [head], n - 1)
  def count_41(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_42([]), do: []
  def flatten_42([head | tail]) when is_list(head), do: flatten_42(head) ++ flatten_42(tail)
  def flatten_42([head | tail]), do: [head | flatten_42(tail)]
  def take_42(_, 0), do: []
  def take_42([], _), do: []
  def take_42([head | tail], n), do: [head | take_42(tail, n - 1)]
  def drop_42(list, 0), do: list
  def drop_42([], _), do: []
  def drop_42([_ | tail], n), do: drop_42(tail, n - 1)
  def rotate_42([], _), do: []
  def rotate_42(list, 0), do: list
  def rotate_42([head | tail], n) when n > 0, do: rotate_42(tail ++ [head], n - 1)
  def count_42(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_43([]), do: []
  def flatten_43([head | tail]) when is_list(head), do: flatten_43(head) ++ flatten_43(tail)
  def flatten_43([head | tail]), do: [head | flatten_43(tail)]
  def take_43(_, 0), do: []
  def take_43([], _), do: []
  def take_43([head | tail], n), do: [head | take_43(tail, n - 1)]
  def drop_43(list, 0), do: list
  def drop_43([], _), do: []
  def drop_43([_ | tail], n), do: drop_43(tail, n - 1)
  def rotate_43([], _), do: []
  def rotate_43(list, 0), do: list
  def rotate_43([head | tail], n) when n > 0, do: rotate_43(tail ++ [head], n - 1)
  def count_43(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_44([]), do: []
  def flatten_44([head | tail]) when is_list(head), do: flatten_44(head) ++ flatten_44(tail)
  def flatten_44([head | tail]), do: [head | flatten_44(tail)]
  def take_44(_, 0), do: []
  def take_44([], _), do: []
  def take_44([head | tail], n), do: [head | take_44(tail, n - 1)]
  def drop_44(list, 0), do: list
  def drop_44([], _), do: []
  def drop_44([_ | tail], n), do: drop_44(tail, n - 1)
  def rotate_44([], _), do: []
  def rotate_44(list, 0), do: list
  def rotate_44([head | tail], n) when n > 0, do: rotate_44(tail ++ [head], n - 1)
  def count_44(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_45([]), do: []
  def flatten_45([head | tail]) when is_list(head), do: flatten_45(head) ++ flatten_45(tail)
  def flatten_45([head | tail]), do: [head | flatten_45(tail)]
  def take_45(_, 0), do: []
  def take_45([], _), do: []
  def take_45([head | tail], n), do: [head | take_45(tail, n - 1)]
  def drop_45(list, 0), do: list
  def drop_45([], _), do: []
  def drop_45([_ | tail], n), do: drop_45(tail, n - 1)
  def rotate_45([], _), do: []
  def rotate_45(list, 0), do: list
  def rotate_45([head | tail], n) when n > 0, do: rotate_45(tail ++ [head], n - 1)
  def count_45(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_46([]), do: []
  def flatten_46([head | tail]) when is_list(head), do: flatten_46(head) ++ flatten_46(tail)
  def flatten_46([head | tail]), do: [head | flatten_46(tail)]
  def take_46(_, 0), do: []
  def take_46([], _), do: []
  def take_46([head | tail], n), do: [head | take_46(tail, n - 1)]
  def drop_46(list, 0), do: list
  def drop_46([], _), do: []
  def drop_46([_ | tail], n), do: drop_46(tail, n - 1)
  def rotate_46([], _), do: []
  def rotate_46(list, 0), do: list
  def rotate_46([head | tail], n) when n > 0, do: rotate_46(tail ++ [head], n - 1)
  def count_46(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_47([]), do: []
  def flatten_47([head | tail]) when is_list(head), do: flatten_47(head) ++ flatten_47(tail)
  def flatten_47([head | tail]), do: [head | flatten_47(tail)]
  def take_47(_, 0), do: []
  def take_47([], _), do: []
  def take_47([head | tail], n), do: [head | take_47(tail, n - 1)]
  def drop_47(list, 0), do: list
  def drop_47([], _), do: []
  def drop_47([_ | tail], n), do: drop_47(tail, n - 1)
  def rotate_47([], _), do: []
  def rotate_47(list, 0), do: list
  def rotate_47([head | tail], n) when n > 0, do: rotate_47(tail ++ [head], n - 1)
  def count_47(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_48([]), do: []
  def flatten_48([head | tail]) when is_list(head), do: flatten_48(head) ++ flatten_48(tail)
  def flatten_48([head | tail]), do: [head | flatten_48(tail)]
  def take_48(_, 0), do: []
  def take_48([], _), do: []
  def take_48([head | tail], n), do: [head | take_48(tail, n - 1)]
  def drop_48(list, 0), do: list
  def drop_48([], _), do: []
  def drop_48([_ | tail], n), do: drop_48(tail, n - 1)
  def rotate_48([], _), do: []
  def rotate_48(list, 0), do: list
  def rotate_48([head | tail], n) when n > 0, do: rotate_48(tail ++ [head], n - 1)
  def count_48(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_49([]), do: []
  def flatten_49([head | tail]) when is_list(head), do: flatten_49(head) ++ flatten_49(tail)
  def flatten_49([head | tail]), do: [head | flatten_49(tail)]
  def take_49(_, 0), do: []
  def take_49([], _), do: []
  def take_49([head | tail], n), do: [head | take_49(tail, n - 1)]
  def drop_49(list, 0), do: list
  def drop_49([], _), do: []
  def drop_49([_ | tail], n), do: drop_49(tail, n - 1)
  def rotate_49([], _), do: []
  def rotate_49(list, 0), do: list
  def rotate_49([head | tail], n) when n > 0, do: rotate_49(tail ++ [head], n - 1)
  def count_49(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_50([]), do: []
  def flatten_50([head | tail]) when is_list(head), do: flatten_50(head) ++ flatten_50(tail)
  def flatten_50([head | tail]), do: [head | flatten_50(tail)]
  def take_50(_, 0), do: []
  def take_50([], _), do: []
  def take_50([head | tail], n), do: [head | take_50(tail, n - 1)]
  def drop_50(list, 0), do: list
  def drop_50([], _), do: []
  def drop_50([_ | tail], n), do: drop_50(tail, n - 1)
  def rotate_50([], _), do: []
  def rotate_50(list, 0), do: list
  def rotate_50([head | tail], n) when n > 0, do: rotate_50(tail ++ [head], n - 1)
  def count_50(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_51([]), do: []
  def flatten_51([head | tail]) when is_list(head), do: flatten_51(head) ++ flatten_51(tail)
  def flatten_51([head | tail]), do: [head | flatten_51(tail)]
  def take_51(_, 0), do: []
  def take_51([], _), do: []
  def take_51([head | tail], n), do: [head | take_51(tail, n - 1)]
  def drop_51(list, 0), do: list
  def drop_51([], _), do: []
  def drop_51([_ | tail], n), do: drop_51(tail, n - 1)
  def rotate_51([], _), do: []
  def rotate_51(list, 0), do: list
  def rotate_51([head | tail], n) when n > 0, do: rotate_51(tail ++ [head], n - 1)
  def count_51(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_52([]), do: []
  def flatten_52([head | tail]) when is_list(head), do: flatten_52(head) ++ flatten_52(tail)
  def flatten_52([head | tail]), do: [head | flatten_52(tail)]
  def take_52(_, 0), do: []
  def take_52([], _), do: []
  def take_52([head | tail], n), do: [head | take_52(tail, n - 1)]
  def drop_52(list, 0), do: list
  def drop_52([], _), do: []
  def drop_52([_ | tail], n), do: drop_52(tail, n - 1)
  def rotate_52([], _), do: []
  def rotate_52(list, 0), do: list
  def rotate_52([head | tail], n) when n > 0, do: rotate_52(tail ++ [head], n - 1)
  def count_52(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_53([]), do: []
  def flatten_53([head | tail]) when is_list(head), do: flatten_53(head) ++ flatten_53(tail)
  def flatten_53([head | tail]), do: [head | flatten_53(tail)]
  def take_53(_, 0), do: []
  def take_53([], _), do: []
  def take_53([head | tail], n), do: [head | take_53(tail, n - 1)]
  def drop_53(list, 0), do: list
  def drop_53([], _), do: []
  def drop_53([_ | tail], n), do: drop_53(tail, n - 1)
  def rotate_53([], _), do: []
  def rotate_53(list, 0), do: list
  def rotate_53([head | tail], n) when n > 0, do: rotate_53(tail ++ [head], n - 1)
  def count_53(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_54([]), do: []
  def flatten_54([head | tail]) when is_list(head), do: flatten_54(head) ++ flatten_54(tail)
  def flatten_54([head | tail]), do: [head | flatten_54(tail)]
  def take_54(_, 0), do: []
  def take_54([], _), do: []
  def take_54([head | tail], n), do: [head | take_54(tail, n - 1)]
  def drop_54(list, 0), do: list
  def drop_54([], _), do: []
  def drop_54([_ | tail], n), do: drop_54(tail, n - 1)
  def rotate_54([], _), do: []
  def rotate_54(list, 0), do: list
  def rotate_54([head | tail], n) when n > 0, do: rotate_54(tail ++ [head], n - 1)
  def count_54(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_55([]), do: []
  def flatten_55([head | tail]) when is_list(head), do: flatten_55(head) ++ flatten_55(tail)
  def flatten_55([head | tail]), do: [head | flatten_55(tail)]
  def take_55(_, 0), do: []
  def take_55([], _), do: []
  def take_55([head | tail], n), do: [head | take_55(tail, n - 1)]
  def drop_55(list, 0), do: list
  def drop_55([], _), do: []
  def drop_55([_ | tail], n), do: drop_55(tail, n - 1)
  def rotate_55([], _), do: []
  def rotate_55(list, 0), do: list
  def rotate_55([head | tail], n) when n > 0, do: rotate_55(tail ++ [head], n - 1)
  def count_55(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_56([]), do: []
  def flatten_56([head | tail]) when is_list(head), do: flatten_56(head) ++ flatten_56(tail)
  def flatten_56([head | tail]), do: [head | flatten_56(tail)]
  def take_56(_, 0), do: []
  def take_56([], _), do: []
  def take_56([head | tail], n), do: [head | take_56(tail, n - 1)]
  def drop_56(list, 0), do: list
  def drop_56([], _), do: []
  def drop_56([_ | tail], n), do: drop_56(tail, n - 1)
  def rotate_56([], _), do: []
  def rotate_56(list, 0), do: list
  def rotate_56([head | tail], n) when n > 0, do: rotate_56(tail ++ [head], n - 1)
  def count_56(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_57([]), do: []
  def flatten_57([head | tail]) when is_list(head), do: flatten_57(head) ++ flatten_57(tail)
  def flatten_57([head | tail]), do: [head | flatten_57(tail)]
  def take_57(_, 0), do: []
  def take_57([], _), do: []
  def take_57([head | tail], n), do: [head | take_57(tail, n - 1)]
  def drop_57(list, 0), do: list
  def drop_57([], _), do: []
  def drop_57([_ | tail], n), do: drop_57(tail, n - 1)
  def rotate_57([], _), do: []
  def rotate_57(list, 0), do: list
  def rotate_57([head | tail], n) when n > 0, do: rotate_57(tail ++ [head], n - 1)
  def count_57(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_58([]), do: []
  def flatten_58([head | tail]) when is_list(head), do: flatten_58(head) ++ flatten_58(tail)
  def flatten_58([head | tail]), do: [head | flatten_58(tail)]
  def take_58(_, 0), do: []
  def take_58([], _), do: []
  def take_58([head | tail], n), do: [head | take_58(tail, n - 1)]
  def drop_58(list, 0), do: list
  def drop_58([], _), do: []
  def drop_58([_ | tail], n), do: drop_58(tail, n - 1)
  def rotate_58([], _), do: []
  def rotate_58(list, 0), do: list
  def rotate_58([head | tail], n) when n > 0, do: rotate_58(tail ++ [head], n - 1)
  def count_58(list, elem), do: Enum.count(list, fn x -> x == elem end)

  def flatten_59([]), do: []
  def flatten_59([head | tail]) when is_list(head), do: flatten_59(head) ++ flatten_59(tail)
  def flatten_59([head | tail]), do: [head | flatten_59(tail)]
  def take_59(_, 0), do: []
  def take_59([], _), do: []
  def take_59([head | tail], n), do: [head | take_59(tail, n - 1)]
  def drop_59(list, 0), do: list
  def drop_59([], _), do: []
  def drop_59([_ | tail], n), do: drop_59(tail, n - 1)
  def rotate_59([], _), do: []
  def rotate_59(list, 0), do: list
  def rotate_59([head | tail], n) when n > 0, do: rotate_59(tail ++ [head], n - 1)
  def count_59(list, elem), do: Enum.count(list, fn x -> x == elem end)


  # Utility functions
  def run_all do
    IO.puts("Running LargeLists08")
    :ok
  end

  def version, do: @version
  def max_value, do: @max_value

end
