# Large Test File 19: map operations
# Arantza Monique Mercado Moreno
# TC2037 - Evidence 2

defmodule LargeMaps19 do
  @moduledoc "Large test module 19 for benchmarking parallel syntax highlighting"
  @version "1.0.19"
  @debug false
  @max_value 1000


  def invert_1(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_1(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_1(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_1(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_1(map, keys), do: Map.take(map, keys)
  def omit_1(map, keys), do: Map.drop(map, keys)
  def group_by_1(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_2(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_2(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_2(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_2(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_2(map, keys), do: Map.take(map, keys)
  def omit_2(map, keys), do: Map.drop(map, keys)
  def group_by_2(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_3(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_3(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_3(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_3(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_3(map, keys), do: Map.take(map, keys)
  def omit_3(map, keys), do: Map.drop(map, keys)
  def group_by_3(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_4(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_4(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_4(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_4(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_4(map, keys), do: Map.take(map, keys)
  def omit_4(map, keys), do: Map.drop(map, keys)
  def group_by_4(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_5(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_5(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_5(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_5(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_5(map, keys), do: Map.take(map, keys)
  def omit_5(map, keys), do: Map.drop(map, keys)
  def group_by_5(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_6(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_6(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_6(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_6(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_6(map, keys), do: Map.take(map, keys)
  def omit_6(map, keys), do: Map.drop(map, keys)
  def group_by_6(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_7(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_7(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_7(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_7(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_7(map, keys), do: Map.take(map, keys)
  def omit_7(map, keys), do: Map.drop(map, keys)
  def group_by_7(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_8(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_8(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_8(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_8(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_8(map, keys), do: Map.take(map, keys)
  def omit_8(map, keys), do: Map.drop(map, keys)
  def group_by_8(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_9(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_9(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_9(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_9(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_9(map, keys), do: Map.take(map, keys)
  def omit_9(map, keys), do: Map.drop(map, keys)
  def group_by_9(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_10(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_10(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_10(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_10(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_10(map, keys), do: Map.take(map, keys)
  def omit_10(map, keys), do: Map.drop(map, keys)
  def group_by_10(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_11(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_11(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_11(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_11(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_11(map, keys), do: Map.take(map, keys)
  def omit_11(map, keys), do: Map.drop(map, keys)
  def group_by_11(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_12(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_12(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_12(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_12(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_12(map, keys), do: Map.take(map, keys)
  def omit_12(map, keys), do: Map.drop(map, keys)
  def group_by_12(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_13(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_13(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_13(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_13(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_13(map, keys), do: Map.take(map, keys)
  def omit_13(map, keys), do: Map.drop(map, keys)
  def group_by_13(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_14(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_14(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_14(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_14(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_14(map, keys), do: Map.take(map, keys)
  def omit_14(map, keys), do: Map.drop(map, keys)
  def group_by_14(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_15(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_15(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_15(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_15(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_15(map, keys), do: Map.take(map, keys)
  def omit_15(map, keys), do: Map.drop(map, keys)
  def group_by_15(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_16(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_16(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_16(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_16(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_16(map, keys), do: Map.take(map, keys)
  def omit_16(map, keys), do: Map.drop(map, keys)
  def group_by_16(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_17(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_17(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_17(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_17(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_17(map, keys), do: Map.take(map, keys)
  def omit_17(map, keys), do: Map.drop(map, keys)
  def group_by_17(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_18(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_18(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_18(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_18(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_18(map, keys), do: Map.take(map, keys)
  def omit_18(map, keys), do: Map.drop(map, keys)
  def group_by_18(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_19(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_19(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_19(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_19(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_19(map, keys), do: Map.take(map, keys)
  def omit_19(map, keys), do: Map.drop(map, keys)
  def group_by_19(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_20(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_20(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_20(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_20(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_20(map, keys), do: Map.take(map, keys)
  def omit_20(map, keys), do: Map.drop(map, keys)
  def group_by_20(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_21(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_21(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_21(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_21(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_21(map, keys), do: Map.take(map, keys)
  def omit_21(map, keys), do: Map.drop(map, keys)
  def group_by_21(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_22(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_22(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_22(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_22(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_22(map, keys), do: Map.take(map, keys)
  def omit_22(map, keys), do: Map.drop(map, keys)
  def group_by_22(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_23(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_23(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_23(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_23(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_23(map, keys), do: Map.take(map, keys)
  def omit_23(map, keys), do: Map.drop(map, keys)
  def group_by_23(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_24(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_24(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_24(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_24(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_24(map, keys), do: Map.take(map, keys)
  def omit_24(map, keys), do: Map.drop(map, keys)
  def group_by_24(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_25(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_25(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_25(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_25(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_25(map, keys), do: Map.take(map, keys)
  def omit_25(map, keys), do: Map.drop(map, keys)
  def group_by_25(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_26(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_26(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_26(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_26(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_26(map, keys), do: Map.take(map, keys)
  def omit_26(map, keys), do: Map.drop(map, keys)
  def group_by_26(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_27(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_27(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_27(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_27(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_27(map, keys), do: Map.take(map, keys)
  def omit_27(map, keys), do: Map.drop(map, keys)
  def group_by_27(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_28(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_28(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_28(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_28(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_28(map, keys), do: Map.take(map, keys)
  def omit_28(map, keys), do: Map.drop(map, keys)
  def group_by_28(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_29(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_29(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_29(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_29(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_29(map, keys), do: Map.take(map, keys)
  def omit_29(map, keys), do: Map.drop(map, keys)
  def group_by_29(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_30(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_30(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_30(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_30(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_30(map, keys), do: Map.take(map, keys)
  def omit_30(map, keys), do: Map.drop(map, keys)
  def group_by_30(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_31(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_31(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_31(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_31(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_31(map, keys), do: Map.take(map, keys)
  def omit_31(map, keys), do: Map.drop(map, keys)
  def group_by_31(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_32(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_32(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_32(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_32(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_32(map, keys), do: Map.take(map, keys)
  def omit_32(map, keys), do: Map.drop(map, keys)
  def group_by_32(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_33(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_33(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_33(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_33(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_33(map, keys), do: Map.take(map, keys)
  def omit_33(map, keys), do: Map.drop(map, keys)
  def group_by_33(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_34(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_34(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_34(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_34(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_34(map, keys), do: Map.take(map, keys)
  def omit_34(map, keys), do: Map.drop(map, keys)
  def group_by_34(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_35(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_35(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_35(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_35(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_35(map, keys), do: Map.take(map, keys)
  def omit_35(map, keys), do: Map.drop(map, keys)
  def group_by_35(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_36(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_36(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_36(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_36(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_36(map, keys), do: Map.take(map, keys)
  def omit_36(map, keys), do: Map.drop(map, keys)
  def group_by_36(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_37(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_37(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_37(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_37(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_37(map, keys), do: Map.take(map, keys)
  def omit_37(map, keys), do: Map.drop(map, keys)
  def group_by_37(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_38(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_38(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_38(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_38(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_38(map, keys), do: Map.take(map, keys)
  def omit_38(map, keys), do: Map.drop(map, keys)
  def group_by_38(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_39(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_39(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_39(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_39(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_39(map, keys), do: Map.take(map, keys)
  def omit_39(map, keys), do: Map.drop(map, keys)
  def group_by_39(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_40(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_40(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_40(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_40(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_40(map, keys), do: Map.take(map, keys)
  def omit_40(map, keys), do: Map.drop(map, keys)
  def group_by_40(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_41(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_41(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_41(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_41(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_41(map, keys), do: Map.take(map, keys)
  def omit_41(map, keys), do: Map.drop(map, keys)
  def group_by_41(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_42(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_42(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_42(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_42(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_42(map, keys), do: Map.take(map, keys)
  def omit_42(map, keys), do: Map.drop(map, keys)
  def group_by_42(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_43(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_43(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_43(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_43(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_43(map, keys), do: Map.take(map, keys)
  def omit_43(map, keys), do: Map.drop(map, keys)
  def group_by_43(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_44(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_44(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_44(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_44(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_44(map, keys), do: Map.take(map, keys)
  def omit_44(map, keys), do: Map.drop(map, keys)
  def group_by_44(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_45(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_45(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_45(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_45(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_45(map, keys), do: Map.take(map, keys)
  def omit_45(map, keys), do: Map.drop(map, keys)
  def group_by_45(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_46(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_46(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_46(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_46(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_46(map, keys), do: Map.take(map, keys)
  def omit_46(map, keys), do: Map.drop(map, keys)
  def group_by_46(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_47(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_47(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_47(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_47(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_47(map, keys), do: Map.take(map, keys)
  def omit_47(map, keys), do: Map.drop(map, keys)
  def group_by_47(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_48(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_48(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_48(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_48(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_48(map, keys), do: Map.take(map, keys)
  def omit_48(map, keys), do: Map.drop(map, keys)
  def group_by_48(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_49(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_49(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_49(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_49(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_49(map, keys), do: Map.take(map, keys)
  def omit_49(map, keys), do: Map.drop(map, keys)
  def group_by_49(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_50(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_50(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_50(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_50(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_50(map, keys), do: Map.take(map, keys)
  def omit_50(map, keys), do: Map.drop(map, keys)
  def group_by_50(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_51(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_51(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_51(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_51(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_51(map, keys), do: Map.take(map, keys)
  def omit_51(map, keys), do: Map.drop(map, keys)
  def group_by_51(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_52(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_52(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_52(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_52(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_52(map, keys), do: Map.take(map, keys)
  def omit_52(map, keys), do: Map.drop(map, keys)
  def group_by_52(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_53(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_53(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_53(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_53(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_53(map, keys), do: Map.take(map, keys)
  def omit_53(map, keys), do: Map.drop(map, keys)
  def group_by_53(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_54(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_54(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_54(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_54(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_54(map, keys), do: Map.take(map, keys)
  def omit_54(map, keys), do: Map.drop(map, keys)
  def group_by_54(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_55(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_55(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_55(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_55(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_55(map, keys), do: Map.take(map, keys)
  def omit_55(map, keys), do: Map.drop(map, keys)
  def group_by_55(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_56(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_56(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_56(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_56(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_56(map, keys), do: Map.take(map, keys)
  def omit_56(map, keys), do: Map.drop(map, keys)
  def group_by_56(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_57(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_57(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_57(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_57(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_57(map, keys), do: Map.take(map, keys)
  def omit_57(map, keys), do: Map.drop(map, keys)
  def group_by_57(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_58(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_58(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_58(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_58(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_58(map, keys), do: Map.take(map, keys)
  def omit_58(map, keys), do: Map.drop(map, keys)
  def group_by_58(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end

  def invert_59(map), do: Map.new(map, fn {{k, v}} -> {{v, k}} end)
  def filter_values_59(map, pred) do
    map |> Enum.filter(fn {{_, v}} -> pred.(v) end) |> Map.new()
  end
  def frequencies_59(list) do
    Enum.reduce(list, %{{}}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
  end
  def stringify_keys_59(map), do: Map.new(map, fn {{k, v}} -> {{to_string(k), v}} end)
  def pick_59(map, keys), do: Map.take(map, keys)
  def omit_59(map, keys), do: Map.drop(map, keys)
  def group_by_59(list, key_fn) do
    Enum.reduce(list, %{{}}, fn item, acc ->
      key = key_fn.(item)
      Map.update(acc, key, [item], fn existing -> [item | existing] end)
    end)
  end


  # Utility functions
  def run_all do
    IO.puts("Running LargeMaps19")
    :ok
  end

  def version, do: @version
  def max_value, do: @max_value

end
