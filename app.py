from flask import Flask, render_template, abort, request
import mysql.connector

app = Flask(__name__)

#START of FUNCTION: get_database_connection
def get_database_connection():
    return mysql.connector.connect(host="localhost", user="root", password="", database="girlyeatz")
#END of FUNCTION: get_database_connection

#START of FUNCTION: restaurant
@app.route('/')
def restaurant():
    restaurant_type = request.args.get('type', 'All')

    #START of TRY-STATEMENT:
    try:
        connection = get_database_connection()
        cursor = connection.cursor()

        #START of IF-STATEMENT:
        if restaurant_type == 'All':
            query = """SELECT r.id, r.name, CONCAT(l.building, ', ', l.street, ', ', l.city) 
                AS location, r.distance, r.rating, r.link
                FROM restaurant r
                JOIN location l ON r.id = l.id
            """
            params = ()
        #END of IF-STATEMENT:

        #START of ELSE-STATEMENT:
        else:
            query = """SELECT r.id, r.name, CONCAT(l.building, ', ', l.street, ', ', l.city) 
                AS location, r.distance, r.rating, r.link
                FROM restaurant r
                JOIN location l ON r.id = l.id
                JOIN type t ON r.id = t.restaurant
                WHERE t.type = %s"""
            params = (restaurant_type,)
        #END of ELSE-STATEMENT

        cursor.execute(query, params)
        results = cursor.fetchall()
        cursor.close()
        connection.close()
    #END of TRY-STATEMENT

    #START of EXCEPTION:
    except mysql.connector.Error as err:
        print(f"Database error in home: {err}")
        results = []
    #END of EXCEPTION

    #START of EXCEPTION:
    except Exception as e:
        print(f"Unexpected error in home: {e}")
        results = []
    #END of EXCEPTION

    return render_template('restaurant.html', results=results)
#END of FUNCTION: restaurant

#START of FUNCTION: search
@app.route('/search', methods=['GET'])
def search():
    name = request.args.get('name', '')

    #START of TRY-STATEMENT:
    try:
        connection = get_database_connection()
        cursor = connection.cursor()

        query = """SELECT r.id, r.name, CONCAT(l.building, ', ', l.street, ', ', l.city) 
            AS location, r.distance, r.rating, r.link
            FROM restaurant r
            JOIN location l ON r.id = l.id
            WHERE r.name LIKE %s"""
        params = (f'%{name}%',)

        cursor.execute(query, params)
        results = cursor.fetchall()
        cursor.close()
        connection.close()
    #END of TRY-STATEMENT

    #START of EXCEPTION:
    except mysql.connector.Error as err:
        print(f"Database error in search: {err}")
        results = []
    #END of EXCEPTION

    #START of EXCEPTION:
    except Exception as e:
        print(f"Unexpected error in search: {e}")
        results = []
    #END of EXCEPTION

    return render_template('restaurant.html', results=results)
#END of FUNCTION: search

#START of FUNCTION: menu
@app.route('/menu/<int:restaurant_id>')
def menu(restaurant_id):
    #START of TRY-STATEMENT:
    try:
        connection = get_database_connection()
        cursor = connection.cursor()

        cursor.execute("SELECT * FROM menu WHERE restaurant = %s", (restaurant_id,))
        menu_items = cursor.fetchall()

        cursor.execute("SELECT name FROM restaurant WHERE id = %s", (restaurant_id,))
        name = cursor.fetchone()

        cursor.close()
        connection.close()

        #START of IF-STATEMENT:
        if not menu_items or not name:
            return render_template('menu.html', results=[], restaurant_name="Restaurant Not Found")
        #END of IF-STATEMENT

        return render_template('menu.html', results=menu_items, restaurant_name=name[0])

    #START of EXCEPTION:
    except mysql.connector.Error as err:
        print(f"Database error in menu: {err}")
        return abort(500, description="Database error occurred.")
    #END of EXCEPTION

    #START of EXCEPTION:
    except Exception as e:
        print(f"Unexpected error in menu: {e}")
        return abort(500, description="An unexpected error occurred.")
    #END of EXCEPTION

#START of IF-STATEMENT:
if __name__ == '__main__':
    app.run(debug=True)
#END of IF-STATEMENT
