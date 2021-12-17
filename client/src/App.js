import './App.css';
import { useEffect, useState } from 'react';
import { Route, BrowserRouter } from "react-router-dom";
import Login from "./Login";
import Home from './Home';

function App() {
  const [user, setUser] = useState(false);

    useEffect(() => {
      fetch("/me").then((r) => {
        if (r.ok) {
          r.json().then((user) => setUser(user));
        }
      });
    }, []);

  return (
    <div className="App">
      <BrowserRouter>
        <Route exact path = "/">
          <Login setUser={setUser} user={user}/>
        </Route>
        <Route exact path = "/home">
          <Home setUser={setUser} user={user}/>
        </Route>
      </BrowserRouter>
      
    </div>
  );
}

export default App;
