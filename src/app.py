from flask import Flask, render_template

app = Flask(__name__)

# Set the rotes of the application 
@app.route("/")
@app.route("/index")
def index():
	return render_template("index.html")


# Start the aplication with debug on 
if __name__ == '__main__':
	app.run(debug=True)