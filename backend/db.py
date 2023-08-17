import mysql.connector


from main import menu_scrape


def connect():
    mydb = mysql.connector.connect(
        host="localhost",
        user="grubbington",
        password="Skimpact89",
        database="grub.database.windows.net"
    )
    return mydb


def createTable(mydb, dict):
    mycursor = mydb.cursor()
    for item, info in dict.items():
        price = dict[item][0]
        desc = dict[item][1]

        insert = f'INSERT INTO menu(item_name, price, description)VALUES ("{item}","{price}","{desc}");'
        mycursor.execute(insert)
        print(mycursor.rowcount, "record inserted.")
    mydb.commit()


if __name__ == '__main__':
    db = connect()
    rads_menu = menu_scrape('https://eatstreet.com/eastlansing-mi/restaurants/conrads-grill-iii')
    createTable(db, rads_menu)
