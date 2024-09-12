from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api/submit', methods=['POST'])
def submit_data():
    data = request.get_json()
    company = data.get('company')
    ingredients = data.get('ingredients')

    if company and ingredients:
        response = {
            "message": "Data received successfully",
            "company": company,
            "ingredients": ingredients
        }
        return jsonify(response), 200
    else:
        return jsonify({"error": "Invalid data"}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

