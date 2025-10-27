from flask import Flask, request

app = Flask(__name__)

@app.route('/saludo', methods=['GET'])
def saludo():
    nombre = request.args.get('nombre', 'Mundo')
    return f'Hola mundo SERVICIO 1, {nombre}!', 200
    
@app.route('/startup', methods=['GET'])
def startup():
    return 200

@app.route('/readiness', methods=['GET'])
def readiness():
    return 200

@app.route('/health', methods=['GET'])
def health():
    return 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
    