from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <h1>Welcome to My DevOps Project!</h1>
    <h2>Application deployed using:</h2>
    <p>Docker + Terraform + AWS EC2 + GitHub</p>
    <p>Status: Application Running Successfully!</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)