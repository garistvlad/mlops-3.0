from src.example import example


def test_example_do_nothing_properly():
    dummy = 42
    assert example(dummy) == dummy
