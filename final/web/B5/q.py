		
import threading

def swap(array, i,flag):
	#print "Here"

	if(array[i]>array[i+1]):
		array[i],array[i+1] = array[i+1],array[i]
		#print "=>",string,": Array is: ",array
		flag[i]=1
		
		
	#print array,i
	#swapped=False


def oddeven(array,flag):
	swapped=True
	#print array
	size=len(array)

	
	while(swapped==True):
		
		swapped=False

		for i in range(1,size-1,2):
			#start , stop, step
			'''flag1=swap("odd",array,i)	
			if flag1==False:
				flag=False'''
					
			p1=threading.Thread(target=swap,args=(array,i,flag))
			p1.start()
			
			
		#print "Flag after odd phase is: ",flag

		for i in range(0,size-1,2):
			p2=threading.Thread(target=swap,args=(array,i,flag))
			p2.start()
			
			'''flag1=swap("even",array,i)
			if flag1==False:
				flag=False'''
		for i in range(size):
			if(flag[i]==1):
				swapped=True
				break
		for i in range(size):
			flag[i]=0
		

		

	print "Array is: ",array

if __name__=="__main__":
	'''file = open('/home/komal/apache-tomcat-7.0.85/webapps/ROOT/jsp-python/input.txt', 'r') 	
	line = file.readline()
	arr = [int(n) for n in line.split()]'''
	arr=[1,7,8,2,3,95,4,10,76,101,100]
	flag=[0,0,0,0,0,0,0,0,0,0,0] #swapped=false
	

	oddeven(arr,flag)
