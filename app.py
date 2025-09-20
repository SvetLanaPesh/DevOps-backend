from flask import Flask, request
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/submit', methods=['POST'])
def submit_data():
    # Получаем данные из тела запроса
    data = request.get_json()
    text = data.get('text', '')

    # Сохраняем данные в файл data.txt
    with open('data.txt', 'a', encoding='utf-8') as f:
        f.write(text + '\n')

    return {'message': 'Данные успешно сохранены!'}, 200

if __name__ == '__main__':
    app.run(debug=True)