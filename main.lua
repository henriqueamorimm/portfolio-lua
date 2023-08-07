local http = require("http")
local server = require("socket").bind("*", 8080)

print("Servidor Lua rodando em http://localhost:8080 :)")

while true do
  local client = server:accept()
  local line, err = client:receive()
  
  local response = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
  response = response .. [[
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Henrique Chamon</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="src/estilos.css">

</head>
<body>


    <section class="home">
        <div class="home-content">
            <h3>Me chamo <span style="color:rgb(0,132,255)">Henrique.</span></h3>
            <h3>Sou um <span class="multiple-text"></span></h3>
            <p>Atualmente, trabalho em alguns grandes projetos, como a <span style="color:rgb(0, 132, 255)">Uork</span>, uma empresa de tecnologia. Por tanto, estou disposto a adquirir novas experiências, afinal, aprender é sempre bom, né?</p>
            <p>É importante lembrar, que estou adquirindo algumas skills, aprofundamentos, e algumas já a algum tempo estou trabalhando, como <b><span style="color:rgb(0, 132, 255)" class="skills-text"></span>.</b></p>
            <div class="social-media">
                <a href="https://twitter.com/@uorkbr" style="--i:8"><i class='bx bxl-twitter' ></i></a>
                <a href="https://instagram.com/henriiquecp" style="--i:9"><i class='bx bxl-instagram-alt' ></i></a>
                <a href="https://github.com/henriqueamorimm" style="--i:10"><i class='bx bxl-github' ></i></a>
            </div>
            <a href="mailto:henriquecbsfn@gmail.com" class="btn">Contate-me</a>
        </div>

        <div class="home-img">
            <img src="src/eu.png" alt="Eu">
        </div>
    </section>


    
    <script src="https://unpkg.com/typed.js@2.0.14/dist/typed.umd.js"></script>
    <script src="src/script3.js"></script>
</body>
</html>]]

  client:send(response)
  client:close()
end
