def generate_file(name, course):
    with open("template.txt", "r") as f:
        template = f.read()

    content = template.format(
        name=name,
        course=course
    )

    with open("output.txt", "w") as f:
        f.write(content)


generate_file("Alice", "System Development Tools")