# https://github.com/godotengine/godot/issues/72948

class Base:
    extends RefCounted

class Other:
    extends Object

class ExampleA:
    extends Base

class ExampleB:
    extends Base

class ExampleC:
    extends ExampleB

func test():
    var ints: Array[int] = [1,2,3]
    var strings: Array[String] = ["4","5","6"]

    print((ints + ints).get_typed_builtin())
    print((strings + strings).get_typed_builtin())
    print((ints + strings).get_typed_builtin())

    var node2ds : Array[Node2D] = []
    var node3ds : Array[Node3D] = []
    var sprites : Array[Sprite2D] = []
    print((node2ds + node2ds).get_typed_class_name())
    print((node2ds + node3ds).get_typed_class_name())
    print((node3ds + node2ds).get_typed_class_name())
    print((node2ds + sprites).get_typed_class_name())
    print((sprites + node2ds).get_typed_class_name())

    var example_a : Array[ExampleA] = []
    var example_b : Array[ExampleB] = []
    var example_c : Array[ExampleC] = []
    var others : Array[Other] = []
    print((example_a + example_a).get_typed_script() == ExampleA)
    print((example_a + example_b).get_typed_script() == Base)
    print((example_b + example_a).get_typed_script() == Base)
    print((example_b + example_c).get_typed_script() == ExampleB)
    print((example_c + example_b).get_typed_script() == ExampleB)
    print((example_c + others).get_typed_class_name())
    print((others + example_c).get_typed_class_name())
