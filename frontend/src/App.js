import React, { useState } from 'react';

import './global.css';

import Routes from './routes';

// JSX (Javascript XML)

function App() { 
  return (
    <div>
      <Routes />
    </div>
  );
}

export default App;


// // Arra [varlo, funcao de atualizacao] - Conceito de estado
// const [counter, setCounter] = useState(0);

// {/* <button onClick={increment}>Incrementardor</button> */}

// function increment() {
//   setCounter(counter + 1);
// }