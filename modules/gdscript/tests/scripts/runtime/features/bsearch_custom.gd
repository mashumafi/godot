func sort_descending(a, b):
	return b < a

# Color can not be compared using <
func color_compare(a: Color, b: Color):
	return b.r < a.r or b.g < a.g or b.b < a.b

func test():
	var bytes = PackedByteArray([3, 2, 1])
	print(bytes.bsearch_custom(3, sort_descending))

	var colors = PackedColorArray([Color.GREEN, Color.BLUE, Color.RED])
	print(colors.bsearch_custom(Color.GREEN, color_compare, true))

	var float32s = PackedFloat32Array([3.75, 2.5, 1.25])
	print(float32s.bsearch_custom(3.75, sort_descending, false))

	var float64s = PackedFloat64Array([3.75, 2.5, 1.25])
	print(float64s.bsearch_custom(3.75, sort_descending))

	var int32s = PackedInt32Array([3, 2, 1])
	print(int32s.bsearch_custom(3, sort_descending, true))

	var int64s = PackedInt64Array([3, 2, 1])
	print(int64s.bsearch_custom(3, sort_descending, false))

	var strings = PackedStringArray(["3", "2", "1"])
	print(strings.bsearch_custom("3", sort_descending))

	var vector2s = PackedVector2Array([Vector2.DOWN, Vector2.ZERO, Vector2.UP])
	print(vector2s.bsearch_custom(Vector2.DOWN, sort_descending, true))

	var vector3s = PackedVector3Array([Vector3.BACK, Vector3.ZERO, Vector3.FORWARD])
	print(vector3s.bsearch_custom(Vector3.BACK, sort_descending, false))
