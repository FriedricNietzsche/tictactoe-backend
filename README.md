

```markdown
# Tic Tac Toe Backend 🎮

This is the backend API for the Tic Tac Toe web app, built with **Java Spring Boot** and deployed to **Render.com** via Docker.

It exposes a RESTful API that allows a frontend (e.g., React on Vercel) to:
- Start new games with various AI difficulty levels
- Make moves
- Track game sessions
- Determine wins or draws

---

##  Live API Base URL

```

[https://tictactoe-backend-](https://tictactoe-backend-j8t5.onrender.com)

````

---

## 🚀 API Endpoints

### `POST /new`
Start a new game.

**Query Parameters:**
- `aiLevel`: `easy` | `medium` | `hard`
- `playerSymbol`: `X` | `O`

**Response:**
```json
{
  "sessionId": "abc123",
  "board": [["_", "_", "_"], ["_", "_", "_"], ["_", "_", "_"]],
  "turn": "X"
}
````

---

### `POST /move`

Make a move in a session.

**Query Parameters:**

* `sessionId`: string
* `row`: 0–2
* `col`: 0–2

**Response:**

```json
{
  "board": [...],
  "winner": "X" | "O",
  "draw": true | false
}
```

---

### `GET /state`

Get current board and game state.

**Query Parameters:**

* `sessionId`: string

**Response:**

```json
{
  "board": [...],
  "winner": "X" | "O" | null,
  "draw": true | false
}
```

---

## 🛠 Technologies

* Java 17
* Spring Boot
* Maven
* Docker
* Deployed via [Render.com](https://render.com)

---

##  Dockerfile (included)

The repo contains a `Dockerfile` that Render uses to build and run the app:

```dockerfile
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN ./mvnw clean package && cp target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
```

---

##  Deploying to Render

1. Push this repo to GitHub
2. Go to [render.com](https://render.com)
3. Create a **Web Service**
4. Choose:

   * Root directory: `tictactoe-backend`
   * Environment: **Docker**
5. Click **Deploy**

---

##  CORS Configuration

The controller includes:

```java
@CrossOrigin(origins = "https://your-frontend.vercel.app")
```

Make sure this matches your deployed frontend domain.

---

##  Frontend Repo

The React frontend is deployed separately via [Vercel](https://vercel.com).
See [`tictactoe`](https://github.com/FriedricNietzsche/tictactoe)


```

```
