import pyodbc

if __name__ == '__main__':
    server = 'tcp:grub.database.windows.net'
    database = 'grub'
    username = 'grubbington'
    password = 'mommalovegrub123!'
    driver = '{ODBC Driver 17 for SQL Server}'

    cnxn = pyodbc.connect('DRIVER=' + driver +
                          ';SERVER=' + server +
                          ';DATABASE=' + database +
                          ';UID=' + username +
                          ';PWD=' + password)

    cursor = cnxn.cursor()

    cursor.execute('''
    CREATE TABLE products (
        product_id int primary key,
        product_name nvarchar(50),
        price int
        )
           ''')

    cnxn.commit()

    print('Connection established')

    #print('Cannot connect to SQL server')
