import { Link, Route, Routes } from 'react-router-dom'
import './App.css'
import DrumMachine from './components/DrumMachine/DrumMachine'

function App() {


  return (
    <>
      <h1>Hola</h1>
      <nav>
        <ul>
          <li>
            <Link to={'/drum-machine'}>Drum Machine</Link>
          </li>
        </ul>
      </nav>

      {/* react-router-dom routes */}
      <Routes>
        <Route path='/drum-machine' element={<DrumMachine />} />
      </Routes>
    </>
  )
}

export default App
