import threading

def swap(array, i,flag):
	if(array[i]>array[i+1]):
		array[i],array[i+1] = array[i+1],array[i]
		#print "=>",string,": Array is: ",array
		flag[i]=1
		
def oddeven(array,flag):
	swapped=True
	size=len(array)
	while(swapped==True):
		swapped=False
		for i in range(1,size-1,2):		
			p1=threading.Thread(target=swap,args=(array,i,flag))
			p1.start()
		for i in range(0,size-1,2):
			p2=threading.Thread(target=swap,args=(array,i,flag))
			p2.start()
		for i in range(size):
			if(flag[i]==1):
				swapped=True
				break
		for i in range(size):
			flag[i]=0

	print "Array is: ",array

if __name__=="__main__":
	file = open('/usr/apache/apache-tomcat-8.0.33/webapps/ROOT/B4/input.txt', 'r') 	
	line = file.readline()
	arr = [int(n) for n in line.split()]
	#arr=[1,7,8,2,3,95,4,10,76,101,100]
	flag = [0 for n in arr]
	oddeven(arr,flag)
