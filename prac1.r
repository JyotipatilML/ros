#include <iostream>

int binarySearch(int arr[], int size, int target) {
    int left = 0;
    int right = size - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2; // Prevents potential overflow

        if (arr[mid] == target) {
            return mid; // Target found at index mid
        } else if (arr[mid] < target) {
            left = mid + 1; // Search in the right half
        } else {
            right = mid - 1; // Search in the left half
        }
    }

    return -1; // Target not found
}

int main() {
    int sortedArray[] = {2, 5, 7, 8, 11, 12};
    int arraySize = sizeof(sortedArray) / sizeof(sortedArray[0]);
    int targetValue = 11;

    int result = binarySearch(sortedArray, arraySize, targetValue);

    if (result != -1) {
        std::cout << "Target " << targetValue << " found at index " << result << std::endl;
    } else {
        std::cout << "Target " << targetValue << " not found in the array." << std::endl;
    }

    targetValue = 13;
    result = binarySearch(sortedArray, arraySize, targetValue);

    if (result != -1) {
        std::cout << "Target " << targetValue << " found at index " << result << std::endl;
    } else {
        std::cout << "Target " << targetValue << " not found in the array." << std::endl;
    }

    return 0;
}
*
*
# Python Code

def binary_search(arr, target):
    left = 0
    right = len(arr) - 1

    while left <= right:
        mid = (left + right) // 2  # Integer division

        if arr[mid] == target:
            return mid  # Target found
        elif arr[mid] < target:
            left = mid + 1  # Search in the right half
        else:
            right = mid - 1  # Search in the left half

    return -1  # Target not found


sorted_list = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
target_element = 23
result = binary_search(sorted_list, target_element)

if result != -1:
    print(f"Element {target_element} found at index {result}")
else:
    print(f"Element {target_element} not found in the list")

target_element = 40
result = binary_search(sorted_list, target_element)

if result != -1:
    print(f"Element {target_element} found at index {result}")
else:
    print(f"Element {target_element} not found in the list")