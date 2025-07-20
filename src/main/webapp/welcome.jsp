<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%
    HttpSession session = request.getSession(false);
    String username = (session != null) ? (String) session.getAttribute("username") : null;
    if (username == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Welcome - Animal A-Z Viewer</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #e3f2fd;
      text-align: center;
      padding: 20px;
    }
    h1, h2 {
      color: #0d47a1;
    }
    .animal-container {
      margin-top: 30px;
    }
    .animal-image {
      width: 250px;
      height: 250px;
      object-fit: cover;
      border: 2px solid #0d47a1;
      border-radius: 12px;
      margin-top: 20px;
    }
    #animalList button {
      margin: 4px;
      padding: 8px 16px;
      font-size: 16px;
      cursor: pointer;
    }
    .logout-btn {
      position: absolute;
      top: 15px;
      right: 15px;
      background-color: #ef5350;
      color: white;
      padding: 6px 14px;
      border: none;
      border-radius: 6px;
      font-size: 14px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <h1>Animal A-Z Viewer</h1>
  <h2>Welcome, <%= username %>!</h2>

  <form action="logout.jsp" method="post">
    <input type="submit" value="Logout" class="logout-btn"/>
  </form>

  <div class="animal-container">
    <p>Click a letter to see the animal:</p>
    <div id="animalList"></div>
    <img id="animalImage" class="animal-image" src="" alt="Animal Image"/>
  </div>

  <script>
    const animals = {
      A: {
        name: "Alligator",
        image: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD..." // Replace with full base64 image
      }
      // Add B-Z entries as needed
    };

    function generateAnimalButtons() {
      const animalListDiv = document.getElementById("animalList");
      for (let i = 65; i <= 90; i++) {
        const letter = String.fromCharCode(i);
        const btn = document.createElement("button");
        btn.textContent = letter;
        btn.onclick = () => showAnimal(letter);
        animalListDiv.appendChild(btn);
      }
    }

    function showAnimal(letter) {
      const animal = animals[letter];
      const img = document.getElementById("animalImage");
      if (animal) {
        img.src = animal.image;
        img.alt = animal.name;
      } else {
        img.src = "";
        img.alt = "No image";
        alert("No animal found for " + letter);
      }
    }

    window.onload = generateAnimalButtons;
  </script>
</body>
</html>
