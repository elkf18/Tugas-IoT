Terdapat Server, Switch, Wireless, PC, Motion Detector, Light, Door

a.	IOT SERVER

Pada server , sebelumnya sudah membuat sebuah akun pada IoT Services yang mana username dan password nya digunakan untuk mengakses Registrasion Server dengan IPvAddress yang sudah dibuat pada server yaitu 192.168.0.10. Pada device nya untuk konfigurasi IoT Server akan menggunakan Remote Server dengan Server Address yg sesuai yaitu 192.168.0.10 dengan username dan password yang telah diinputkan pada service Server bagian IoT.

b.	AAA
Pada service server mengaktifkan AAA dengan membuat client Name HomeGateway, membuat client ip yaitu 192.168.0.1, dan membuat secret password elya123 dengan type servernya Radius. Pada user setup akan membuat username dan password yang unik atau berbeda dengan antar device, jadi membuat satu akun untuk satu device. Yang mana nantinya device-device tersebut akan dihubungkan dengan server menggunakan username dan password masing-masing

c.	WIRELESS
Pada wireless router pada GUI Wirelessnya menggunakan network Name(SSID) dengan HomeGateway sesuai dengan Client Name nya yaitu HomeGateway dan Wireless Securitynya yaitu WPA Enterprise, encryption AES, Radius Server yaitu 192.168.0.10 menyesuaikan dengan IPvAddress nya dan Share secretnya elya123 mengikuti key pada network configuration pada AAA. Pada device nya diklik I/O Config dengan Network Adapter PT-IOT-NW-1W-AC. Lalu secara otomatis masing-masing device akan terhubung dengan jaringa wireless pada router

d.	PC
Pada PC diatur dengan IPv4Address 192.168.0.5 dengan default gateway yaitu 192.168.0.1

CARA KERJA
Server disini sebagai penyedia layanan akses untuk mengirim atau menerima data yang tersedia pada server. Lalu server dihubungkkan pada switch yang mana switch berbungsi untuk menghubungkan anatara server, PC, dan Wireless. Wireless Router berfungsi sebagai penghubung antar device untuk meneruskan data ke switch yang memiliki server untuk penyedia layanan dan PC untuk mengakses registrasion server yang berada pada web browser
PC akan merequest untuk mengakses data pada server. Lalu setelah request diterima, server akan memprosesnya dan hasilnya dikirimkan kembali pada komputer client. Jadi pada komputer memiliki sebuah web browser yang tertera pada desktop dan ada menu web browser. Nantinya web browser akan dijadikan media untuk merequest server dengan  mengetikkan url yang berisi IPv4Address servernya. Setelah itu  mengetikan login server jika pada browser dinyatakan data tidak sesuai atau belum membuat akun maka melakukan registrasi dengan mengetikan username dan password. Lalu jika berhasil akan ditampilkan Device dari IoT Servernya yaitu ada 3 device:motion, door, light.  Pada device itu bisa ditambahkan sebuah kondisi dengan menambahkan if else. Di sini saya menggunakan pengkondisian
1.	Jika Motion detector nyala maka door akan tidak terkunci dan lampu akan nyala terang
2.	Jika Motion detector mati maka door akan terkunci dan lampu akan mati
Sensor motion detector merupakan sensor yang dapat mendeteksi pergerakan. Untuk program ini,motion detector akan mendeteksi pergerakan dengan jika ada pergerakan maka lampu nyala dan pintu terbuka. Jika motion detector tidak mendeteksi adanya pergerakan maka pintu akan terkunci Kembali dan lampu akan mati.

