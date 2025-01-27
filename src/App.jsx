import { Link, Route, Routes } from 'react-router-dom'
import './App.css'
import DrumMachine from './components/DrumMachine/DrumMachine'
import Calculator from './components/Calculator/Calculator'

function App() {


  return (
    <>
      <nav>
        <ul>
          <li>
            <Link to={'/drum-machine'}>Drum Machine</Link>
          </li>
          <li>
            <Link to={'/calculator'}>Calculator</Link>
          </li>
        </ul>
      </nav>

      {/* react-router-dom routes */}
      <Routes>
        <Route path='/drum-machine' element={<DrumMachine />} />
        <Route path='/calculator' element={<Calculator />} />
      </Routes>
    </>
  )
}

export default App
