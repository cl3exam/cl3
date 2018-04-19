#THIS IS RIGHT EXCEPT THAT INPUT ARRAY MUST BE IN A FILE, NOT GIVEN THROUGH TERMINAL

import unittest
def binary_search(arr, size, key):
	low = 0 
	print "Array: ", arr, "to be searched for: ", key
	high = size - 1
	mid = int((low+high)/2)
	while low<=high:
		temp=0
		if key==int(arr[mid]):
			print "Found", key, " at position: ", mid+1, "\n"
			return mid
		elif key>int(arr[mid]):
			low=mid+1
			mid=int((low+high)/2)
		else:
			high=mid-1
			mid=int((low+high)/2)
	return -1
	
			
class MyTest(unittest.TestCase):
	def test_positive(self):
		self.assertEqual(binary_search([10, 20, 30, 40, 50], 5, 40), 4)
	def test_negative(self):
		self.assertEqual(binary_search([10, 20, 30, 40, 50], 5, 4), 0)
		
arr=[]
size=int(input("How many elements: "))
for i in range(0, size):
	print "Enter element"
	arr.append(input())
	
print "Input array"
print(arr)
print "\n-------------------------------\nTesting...\n---------------------------------\n"
arr.sort()
print "Sorted array is: "
print(arr)
key=int(input("Enter search element: "))
position=binary_search(arr, size, key)
print "pos= ", position
unittest.main()

'''
OUTPUT:

nandita@nandita-HP-Pavilion-Notebook:~$ python cl3a1.py
How many elements: 5
Enter element
3
Enter element
2
Enter element
5
Enter element
1
Enter element
7
Input array
[3, 2, 5, 1, 7]

-------------------------------
Testing...
---------------------------------

Sorted array is: 
[1, 2, 3, 5, 7]
Enter search element: 6
Array:  [1, 2, 3, 5, 7] to be searched for:  6
Not found 

Array:  [10, 20, 30, 40, 50] to be searched for:  4
Not found 

.Array:  [10, 20, 30, 40, 50] to be searched for:  40
Found 40  at position:  4 

.
----------------------------------------------------------------------
Ran 2 tests in 0.000s

OK
nandita@nandita-HP-Pavilion-Notebook:~$ 
'''
