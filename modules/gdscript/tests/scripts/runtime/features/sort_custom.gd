func sort_descending(a, b):
	return b < a

# Color can not be compared using <
func color_compare(a: Color, b: Color):
	return b.r < a.r or b.g < a.g or b.b < a.b

func test():
	var bytes = PackedByteArray([1, 2, 3])
	bytes.sort_custom(sort_descending)
	print(bytes)

	var colors = PackedColorArray([Color.RED, Color.BLUE, Color.GREEN])
	colors.sort_custom(color_compare)
	print(Array(colors)) # Use Array() to print colors correctly

	var float32s = PackedFloat32Array([1.25, 2.5, 3.75])
	float32s.sort_custom(sort_descending)
	print(float32s)

	var float64s = PackedFloat64Array([1.25, 2.5, 3.75])
	float64s.sort_custom(sort_descending)
	print(float64s)

	var int32s = PackedInt32Array([1, 2, 3])
	int32s.sort_custom(sort_descending)
	print(int32s)

	var int64s = PackedInt64Array([1, 2, 3])
	int64s.sort_custom(sort_descending)
	print(int64s)

	var strings = PackedStringArray(["1", "2", "3"])
	strings.sort_custom(sort_descending)
	print(strings)

	var vector2s= PackedVector2Array([Vector2.UP, Vector2.ZERO, Vector2.DOWN])
	vector2s.sort_custom(sort_descending)
	print(vector2s)

	var vector3s = PackedVector3Array([Vector3.FORWARD, Vector3.ZERO, Vector3.BACK])
	vector3s.sort_custom(sort_descending)
	print(vector3s)
