from flask import Flask, render_template, request
app = Flask(__name__, template_folder='templates')

file = open("text1.txt","r")
textdb = []
for line in file:
	textdb.append(line.strip())

file = open("text2.txt","r")
for line in file:
	textdb.append(line.strip())

file = open("text3.txt","r")
for line in file:
	textdb.append(line.strip())

@app.route('/')
def hello_world():
	header = 'Hello, World!<br>This is Plagairism Checker<br>'
	linktext = 'Click <a href="/check">here</a> to use it'
	return header+linktext

@app.route('/check',methods=['GET', 'POST'])
def check():
	if request.method == 'POST':
		response = ""
		text = request.form['PlagairismText']
		lines = text.split("\n")
		textlenght = len(lines)
		matches = 0
		no_match = 0
		for line in lines:
			if line.strip() in textdb:
				matches+=1
			else:
				no_match+=1
		
		plagairismPercentage = (float(matches)/(no_match+matches))*100

		plagairismOutput = "The given text has <b>"+str(plagairismPercentage)+" %</b> plagairised text"
		response = response+'<br><br>'+plagairismOutput

		return response
	else:
		return render_template("plagairismForm.html")


if __name__=="__main__":
    app.run(debug=True) 
