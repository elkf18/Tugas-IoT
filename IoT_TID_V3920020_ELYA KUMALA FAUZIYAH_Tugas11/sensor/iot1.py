import MySQLdb


db = MySQLdb.connect("localhost", "root", "", "iot2")
cursor = db.cursor()

# input
id_sensor = int(str(input("Masukkan ID : ")))
nama_objek_sensor = str(input("Masukkan Nama Device : "))
sensor2 = str(input("Masukkan Kelembapan Ideal : "))
sensor1 = str(input("Masukkan Suhu Ideal : "))

# masuk database
tb_sensor = []


in_device = id_sensor, nama_objek_sensor, sensor1, sensor2
tb_sensor.append(in_device)


sql = "insert into tb_sensor (id_sensor, nama_objek_sensor,sensor1, sensor2) values (%s,%s,%s,%s)"
inptdata = cursor.executemany(sql, tb_sensor)

print("BERHASIL", tb_sensor)

db.commit()
db.close()
