#include <iostream>
using namespace std;
#define MAX 1024

// Function to merge two arrays
void mergeArrays(int arr1[], int arr2[], int arr1Size, int arr2Size, int merged[]) {
    int i = 0, j = 0, k = 0;

    // Merge arrays while there are elements in both
    while (i < arr1Size && j < arr2Size) {
        if (arr1[i] < arr2[j]) {
            merged[k++] = arr1[i++];
        } else {
            merged[k++] = arr2[j++];
        }
    }

    // Copy remaining elements of arr1
    while (i < arr1Size) {
        merged[k++] = arr1[i++];
    }

    // Copy remaining elements of arr2
    while (j < arr2Size) {
        merged[k++] = arr2[j++];
    }
}

int main()
{
    int order1[MAX] = {};
    int order2[MAX] = {};
    int preferred_size1 = 0;
    int preferred_size2 = 0;
    
    cout << "It's merging time! Enter the first list. We'll put it in order for you!" << endl
    << "How many numbers are you listing? (up to 1024)" << endl;
    cin >> preferred_size1;
    while (preferred_size1 > 1024 || preferred_size1 < 1)
    {
        cout << "NO! Try again..." << endl;
        cin >> preferred_size1;
    }
    
    for (int i = 0; i < preferred_size1; i++)
    {
        
        cout << "Enter an number from positon " << (i+1) << endl;
        cin >> order1[i];
    }
    
    cout << "Alright, give me another amount of numbers in the second list!" << endl;
    cin >> preferred_size2;
    while (preferred_size2 > 1024 || preferred_size2 < 1)
    {
        cout << "NO! Try again..." << endl;
        cin >> preferred_size2;
    }
    
    for (int i = 0; i < preferred_size2; i++)
    {
        
        cout << "Enter an number from positon " << (i+1) << endl;
        cin >> order2[i];
    }
    
    cout << endl << "Merging both lists together..." << endl;
    int merged[preferred_size1 + preferred_size2];
    
    mergeArrays(order1, order2, preferred_size1, preferred_size2, merged);
    
    for (int i = 0; i < preferred_size1 + preferred_size2; i++)
    {
        cout << merged[i] << " ";
    }

    return 0;
}
