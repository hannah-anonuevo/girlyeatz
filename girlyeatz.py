import mysql.connector
from mysql.connector import Error


def create_connection():
    """ Create a database connection """
    try:
        connection = mysql.connector.connect(
            host="localhost", user="root", password="", database="girlyeatz"
        )
        if connection.is_connected():
            print("Connected to MySQL Server")
            return connection
    except Error as e:
        print(f"Error: {e}")
        return None


def execute_query(connection, query):
    """ Execute a single query """
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query executed successfully")
    except Error as e:
        print(f"Error: {e}")


def main():
    connection = create_connection()
    if connection is None:
        return

    # Create 'location' table
    create_location_table = """
    CREATE TABLE IF NOT EXISTS location (
      id INT(11) NOT NULL,
      building VARCHAR(255) NOT NULL,
      street VARCHAR(255) NOT NULL,
      city VARCHAR(255) NOT NULL,
      PRIMARY KEY (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
    """
    execute_query(connection, create_location_table)

    # Insert data into 'location'
    insert_location_data = """
    INSERT INTO location (id, building, street, city) VALUES
    (1, 'H255+JWJ San Antonio Residence', 'Makati', 'Metro Manila'),
    (2, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
    (3, '81 Sen Gil Puyat', 'Makati', '1235 Metro Manila'),
    (4, '7431 Yakal, Village', 'Makati', '1203 Kalakhang Maynila'),
    (5, 'Makati Curb', '7433 Yakal', 'Makati, 1203 Metro Manila'),
    (6, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
    (7, 'The Linear Tower 1 Mayapis Cor. Yakal', 'Makati', 'Philippines'),
    (8, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
    (9, '309 Sen. Gil J. Puyat Ave', 'Pasay', '1110 Metro Manila'),
    (10, 'G/F, Cash & Carry Mall', 'Filmore St', 'Makati City, 1235 Metro Manila'),
    -- Add other rows similarly
    (49, 'Brgy, Space No. FC1-CU6', '100 Sen. Gil Puyat Ave, Corner Washington', 'Makati, 1230 Metro Manila');
    """
    execute_query(connection, insert_location_data)

    # Create 'menu' table
    create_menu_table = """
    CREATE TABLE IF NOT EXISTS menu (
      id INT(11) NOT NULL,
      restaurant INT(11) NOT NULL,
      name VARCHAR(255) NOT NULL,
      price DOUBLE NOT NULL,
      PRIMARY KEY (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
    """
    execute_query(connection, create_menu_table)

    # Insert data into 'menu'
    insert_menu_data = """
    INSERT INTO menu (id, restaurant, name, price) VALUES
    (1, 1, 'Grilled Chicken', 299),
    (2, 1, 'Chicken Wings', 229),
    (3, 1, 'Chicken Nuggets', 179),
    (4, 1, 'Fries', 99),
    (5, 1, 'Soft Drink', 49),
    (6, 2, 'Korean Fried Chicken', 400),
    (7, 2, 'Bonchon Wings', 350),
    (8, 2, 'Chicken Katsu', 250),
    (9, 2, 'Soy Garlic Chicken', 400),
    (10, 2, 'Bibimbap', 280),
    (11, 2, 'Garlic Soy Chicken', 400),
    (12, 2, 'Spicy Chicken Sandwich', 180),
    (13, 2, 'Korean BBQ Beef', 350),
    (14, 2, 'Kimchi Fried Rice', 150),
    (15, 3, 'Whopper', 250),
    (16, 3, 'Chicken Fries', 150),
    (17, 3, 'Cheeseburger', 150),
    (18, 3, 'Double Cheeseburger', 200),
    (19, 3, 'French Fries (Medium)', 80),
    (20, 3, 'Onion Rings', 120),
    (21, 3, 'Chicken Nuggets (6 pcs)', 120),
    (22, 3, 'Soft Drink (Medium)', 70),
    (23, 3, 'Sundae', 80),
    (24, 3, 'Chicken Royale', 200),
    (25, 4, 'Cheese Platter', 650),
    (26, 4, 'Charcuterie Board', 750),
    (27, 4, 'Wine Tasting Set', 1200),
    (28, 4, 'Grilled Sausages', 400),
    (29, 4, 'Mixed Greens Salad', 300),
    (30, 4, 'Bread Basket', 150),
    (31, 4, 'Assorted Cheese', 500),
    (32, 4, 'Beef Carpaccio', 600),
    (33, 4, 'Chocolate Fondue', 450),
    (34, 4, 'Gourmet Sandwich', 350),
    (35, 5, 'Peking Duck', 1200),
    (36, 5, 'Dim Sum Platter', 650),
    (37, 5, 'Hot and Sour Soup', 250),
    (38, 5, 'Beef Chow Fun', 400),
    (39, 5, 'Kung Pao Chicken', 380),
    (40, 5, 'Sweet and Sour Pork', 350),
    (41, 5, 'Fried Rice', 300),
    (42, 5, 'Spring Rolls', 200),
    (43, 5, 'Braised Abalone', 1500),
    (44, 5, 'Mango Pudding', 180),
    (45, 6, 'Pearl Milk Tea', 120),
    (46, 6, 'Brown Sugar Milk Tea', 130),
    (47, 6, 'Taro Milk Tea', 125),
    (48, 6, 'Matcha Milk Tea', 135),
    (49, 6, 'Mango Green Tea', 115),
    (50, 6, 'Strawberry Milk Tea', 125),
    (51, 6, 'Wintermelon Milk Tea', 120),
    (52, 6, 'Oreo Milk Tea', 140),
    (53, 6, 'Honey Lemonade', 110),
    (54, 6, 'Chocolate Milk Tea', 135),
    (55, 7, 'Kung Pao Chicken', 250),
    (56, 7, 'Sweet and Sour Pork', 220),
    (57, 7, 'Mapo Tofu', 200),
    (58, 7, 'Beef with Broccoli', 240),
    (59, 7, 'Fried Rice', 180),
    (60, 7, 'Spring Rolls', 120),
    (61, 7, 'Hot and Sour Soup', 150),
    (62, 7, 'Dumplings', 200),
    (63, 7, 'Chow Mein', 190),
    (64, 7, 'Sesame Chicken', 230),
    (65, 8, 'Mozzarella Sticks', 150),
    (66, 8, 'Cheesy Pizza', 300),
    (67, 8, 'Mozzarella Burger', 250),
    (68, 8, 'Cheesy Fries', 180),
    (69, 8, 'Garlic Bread with Mozzarella', 120),
    (70, 8, 'Mozzarella Pasta', 220),
    (71, 8, 'Cheese Dip', 140),
    (72, 8, 'Chicken Mozzarella Wrap', 230),
    (73, 8, 'Mozzarella Sticks with Marinara', 160),
    (74, 8, 'Four Cheese Pizza', 320),
    (75, 9, 'Chao Fan', 140),
    (76, 9, 'Sweet and Sour Chicken', 200),
    (77, 9, 'Beef Steak', 300),
    (78, 9, 'Yang Chow Fried Rice', 180),
    (79, 9, 'Hot and Sour Soup', 150),
    (80, 9, 'Garlic Shrimp', 250),
    (81, 9, 'Pancit Canton', 200),
    (82, 9, 'Spring Rolls', 130),
    (83, 9, 'Lumpiang Shanghai', 160),
    (84, 10, 'Crispy Chicken Sandwich', 250),
    (85, 10, 'Bacon Cheeseburger', 280),
    (86, 10, 'Fries with Cheese', 120),
    (87, 10, 'Milkshake', 150),
    (88, 10, 'Chicken Wings', 200),
    (89, 10, 'Onion Rings', 130),
    (90, 10, 'Buffalo Chicken Wrap', 270),
    (91, 10, 'Double Cheeseburger', 320),
    (92, 10, 'Chicken Tenders', 180),
    (93, 11, 'Fish and Chips', 300),
    (94, 11, 'Fried Calamari', 250),
    (95, 11, 'Grilled Salmon', 350),
    (96, 11, 'Shrimp Scampi', 280),
    (97, 11, 'Garlic Bread', 120),
    (98, 11, 'Clam Chowder', 200),
    (99, 11, 'Lobster Roll', 400),
    (100, 11, 'Crab Cakes', 320),
    (101, 11, 'Mussels', 250),
    (102, 12, 'Beef Shawarma', 220),
    (103, 12, 'Chicken Shawarma', 200),
    (104, 12, 'Hummus with Pita', 150),
    (105, 12, 'Falafel', 180),
    (106, 12, 'Tabbouleh Salad', 170),
    (107, 12, 'Baklava', 130),
    (108, 12, 'Kibbeh', 250),
    (109, 12, 'Grilled Kofta', 280),
    (110, 12, 'Stuffed Grape Leaves', 150);
    """
    execute_query(connection, insert_menu_data)

    # Close the connection
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")


if __name__ == "__main__":
    main()
