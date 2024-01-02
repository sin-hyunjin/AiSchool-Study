import React, { useContext } from 'react'
import { CounterContext } from '../context/CounterContext'

/*
    1.Context란
        - React Component 간에 state를 공유할 수 있게 해주는 기능
        - 상위 컴포넌트에 전역으로 state를 정의하고 Context.Provider의 value속성에 저장
        - 하위 컴포넌트에서는 useContext(Context정보(이름?))로 state를 접근할 수 있음
        - 매번 props로 state를 전달할 필요가 없음
    
    2.Context 사용방법
        2-1. src -> context폴더를 생성하고 Context컴포넌트를 생성한다. (OOOContext.jsx)
        2-2. 최상위 컴포넌트에서 import로 Context를 불러온다.
        2-3. <OOOContext.Provider value={{state,setState}}> 컴포넌트로 <App/>를 감싸준다.
        2-4. 하위 컴포넌트에서는 useContext()를 이용하여 사용한 state와 setState를 가져온다.
*/


const Counter = () => {

    const {count,setCount} = useContext(CounterContext)

  return (
    <div>
        <h1>{count}</h1>
        <button onClick={()=>setCount(count+1)}>증가</button>
    </div>
  )
}

export default Counter


// import React from 'react'
// const Counter = ({count,setCount}) => {
//   return (
//     <div>
//         <h1>{count}</h1>
//         <button onClick={()=>setCount(count+1)}>증가</button>
//     </div>
//   )
// }
// export default Counter