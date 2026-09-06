def calculate_average(numbers):
    total = 0

    for num in numbers:
        total += num

    average = total / len(numbers)

    return average


data = [10, 20, 30, 40]

result = calculate_average(data)

print("average:", result) 