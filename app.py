from flask import Flask, jsonify, request
from database import conn, cursorObject

app = Flask(__name__)

# route para a homepage
@app.get('/')
def index():
    return f"PL 01 Gonçalo Iglésias, José Silva, André Amorim"

# retornar todos os registos da BD em formato JSON
@app.get('/view/iphones') 
def viewPhones():
    allPhones = []
    cursorObject.execute("SELECT * FROM iphones")
    myResult = cursorObject.fetchall()
    for phone in myResult:
        allPhones.append({
            'id' : phone[0],
            'image' : phone[1],
            'url' : phone[2],
            'name' : phone[3],
            'price' : phone[4],
        })
    return jsonify(allPhones)

# retornar os dados do iphone mais caro em formato JSON
@app.get('/view/iphones/mostexpensive')
def viewMostExpensive():
    mostExpensive = []
    cursorObject.execute("SELECT * FROM iphones WHERE price = (SELECT MAX(price) FROM iphones) ORDER BY id asc")
    myResult = cursorObject.fetchall()
    for phone in myResult:
        mostExpensive.append({
        'id' : phone[0],
        'image' : phone[1],
        'url' : phone[2],
        'name' : phone[3],
        'price' : phone[4],
        })
    return jsonify(mostExpensive)

# adicionar novos modelos através de um formulário
@app.get('/insert/iphone')
def insertPhone():
    return '''
        <p style="font-size: 18px;">Insira um novo iPhone</p>
            <form method="POST" action="/insert/iphone/added">
                <div style="padding-bottom: 20px;">
                    <input type="text" name="image" placeholder="Link para a imagem" required>
                </div>
                <div style="padding-bottom: 20px;">
                    <input type="text" name="url" placeholder="Link para a página" required>
                </div> 
                <div style="padding-bottom: 20px;">
                    <input type="text" name="name" placeholder="Nome do iPhone" required>
                </div>
                <div style="padding-bottom: 20px;">
                    <input type="number" name="price" step="any" placeholder="Preço do iPhone" required>
                </div> 
                <div style="padding-bottom: 20px;">
                    <input type="submit" value="Inserir">
                </div>
            </form>
    '''
@app.post('/insert/iphone/added')
def insertPhonePost():
    image = request.form['image']
    url = request.form['url']
    name = request.form['name']
    price = request.form['price']
    query = "INSERT INTO iphones (image, url, name, price) VALUES (%s, %s, %s, %s)"
    cursorObject.execute(query, (image, url, name, price))
    if cursorObject.rowcount > 0: 
        return (f"{name} adicionado à BD")
    return "\nErro: Não foi possível adicionar o iPhone à BD"

# ver os dados de um iphone específico em formato JSON
@app.get('/view/iphone/<int:id>')    
def getPhoneJson(id):               
    cursorObject.execute(f"SELECT * FROM iphones WHERE id = {(id)}")
    phone = cursorObject.fetchone()
    return jsonify({
            'id' : phone[0],
            'image' : phone[1],
            'url' : phone[2],
            'name' : phone[3],
            'price' : phone[4],
    })

# ver os dados de um iphone específico em formato HTML
@app.get('/view/iphone/details/<int:id>')
def getPhoneHtml(id):
    cursorObject.execute(f"SELECT * FROM iphones WHERE id = {id}")
    phone = cursorObject.fetchone()
    image = phone[1]
    url = phone[2]
    name = phone[3]
    price = phone[4]
    return f'''
            <table>
                <tr>
                    <td style="width: 368px;">
                    <img src="{image}" alt="iPhone image" max-width="368px">
                    </td>
                </tr>
                <tr>
                    <td>
                    <span style="font-size: 18px;">{name}</span>
                    </td>
                </tr>
                <tr>
                    <td>
                    <span style="font-size: 20px;">€{price}</span>
                    </td>
                </tr>
                <tr>
                    <td>
                    <a href="{url}" target="_blank">Ver Detalhes</a>
                    </td>
                </tr>
            </table>
    '''

# retornar todos os iphones de uma determinada cor, em formato JSON
@app.get('/view/iphones/color')
def viewColor():
    return '''
    <form method="POST" action="/view/iphones/showcolor">
    <label for="colors">Selecione a cor do iPhone:</label>
    <select name="color">
        <option value="Amarelo">Amarelo</option>
        <option value="Azul">Azul</option>
        <option value="Branco">Branco</option>
        <option value="Natural">Natural</option>
        <option value="Preto">Preto</option>
        <option value="Rosa">Rosa</option>
        <option value="Verde">Verde</option>
    </select>
    <input type="submit" value="Escolher">
  '''
   
@app.post('/view/iphones/showcolor')
def viewColorPost():
    colorPhones = []
    color = request.form['color']
    cursorObject.execute(f"SELECT * FROM iphones WHERE name LIKE '%{color}%'")
    myResult = cursorObject.fetchall()
    for phone in myResult:
        colorPhones.append({
        'id' : phone[0],
        'image' : phone[1],
        'url' : phone[2],
        'name' : phone[3],
        'price' : phone[4],
        })
    return jsonify(colorPhones)
    
if __name__ == '__main__':
    app.run(debug=True)
