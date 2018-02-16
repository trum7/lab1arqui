<p align="center">
  <img src="https://github.com/trum7/testarquisoft2018/blob/master/images/title.png" alt="API Documentation Generator" width="500">
  <br>
</p>

<p align="center">
  <b>Jeisson Andrés Vergara Vargas, M.Sc. (c)</b>
  <br>
  <b>Software Architecture</b>
  <br>
  <b>2018-I</b>
</p>
<br><br>

### Creación de Microservicio con Ruby on Rails (RoR)

**1.** Instalar Ruby y RoR según el
sistema operativo:


http://rubyonrails.org.es/instala.html


**2.** Realizar el proceso de instalación, y verificar que se encuentren correctamente instalados usando los siguientes comandos:

>```ruby -v```

>```rails -v```

![alt text](./images/image1.png "Logo Title Text 1")
### Creación de Máquinas Virtuales

**3.** Dirigirse a la carpeta donde se creará el microservicio e ingresar el comando:

> `rails new sa_students_ms -d mysql --api`


**4.** En la raíz del proyecto creado, ejecutar:

> `gem install mysql2`

**5.** Agregar las siguientes líneas en el Gemfile:

> `gem 'therubyracer', :platforms => :ruby`

> `gem 'execjs'`

**6.** Con el fin de instalar las gemas del proyecto, ejecutar el siguiente comando en la raíz del proyecto:

> `bundle install`

### Dockerización del Microservicio

**7.** Crear tres archivos en la raíz del proyecto:

* [Dockerfile](./files/Dockerfile)

![alt text](./images/image2.png "Dockerfile")

* [docker-compose.yml](./files/docker-compose.yml)

![alt text](./images/image3.png "docker-compose.yml")

* [start.sh](./files/start.sh)

![alt text](./images/image4.png "start.sh")

**8.** Configurar el archivo **/config/database.yml**, poniendo el usuario y contraseña correspondientes, declarados en el archivo docker-compose.yml (en default: username, password; en development: database). Así mismo, agregar el host en default.

![alt text](./images/image5.png "database.yml")

**9.** Ejecutar el archivo **./start.sh** para desplegar el microservicio

**10.** Verificar el Servidor Rancher, allí se podrán visualizar los dos contenedores creados: uno para la base de datos y otro para el microservicio:

![alt text](./images/image6.png "rancherserver")

**11.** Verificar la dirección http://192.168.99.101:3000:

![alt text](./images/image7.png "rails")


### Creación del API-REST del Microservicio

**12.** Realizar Ctrl + C en la consola para salir.

**13.** El microservicio creado se encargará de los estudiantes, por lo tanto tendrá un modelo llamado Student, que tendrá los siguientes atributos:

* id: Integer
* name: String
* lastname: String
* email: String
* code: Integer
* telephone: Bigint

**14.** Para generar el model, ejecutar el siguiente comando:

>	` rails generate scaffold Student name:string lastname:string email:string code:integer telephone:bigint `

**15.** Se crearán los controladores necesarios para realizar las operaciones CRUD del modelo Student.

**16.** Desplegar nuevamente el microservicio ejecutando ./start.sh.

### Comprobación del API-REST

**17.** Instalar Postman:

https://www.getpostman.com/

**18.** Operación Create Student. En Postman:

http://192.168.99.101:3000/products:

**Body:**  

{  
	"name":"Camilo",  

  "lastname": "Dajer"  

  "email": "cadajerp@unal.edu.co",  

	"code": 28791234,  

	"telephone": 123456789  

}
