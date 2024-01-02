import React from 'react'
import { Navigate } from 'react-router-dom'
import GoodsDetail from '../page/GoodsDetail'

// 로그인 상태에 따라 다른 페이지로 이동되도록 구현하시오.
// 로그인 상태 : 상품상세페이지로 이동
// 비로그인 상태 : 로그인페이지로 이동

// 최상단 app.js -> PrivateRoute.js (정의된 auth props를 전달해야한다.)
// 구조분해 문법 { authenticate }
const PrivateRoute = ({ authenticate }) => {
  return authenticate ? <GoodsDetail /> : <Navigate to={'/login'} />
}

export default PrivateRoute
