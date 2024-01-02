import React, { useEffect } from 'react'
import { useParams } from 'react-router-dom'
import axios from 'axios'
import { useState } from 'react'

const GoodsDetail = () => {
  //상품정보를 저장하는 state를 정의하시오.
  //state명: good
  const [good, setGood] = useState(null)

  //GoodsItem에서 넘겨받은 상품id를 저장하는 변수를 정의하시오.
  // useParams() 활용
  const { id } = useParams()
  console.log('넘겨받은 상품 ID :', id)
  //상품리스트에서 특정 상품정보만 JSON서버로부터 가져온 후, good state에 저장하는
  //getGoods함수를 구현하시오.
  //요청URL : http://localhost:3004/goods_list/상품id

  // json파일이 가져오는데 시간이 걸릴수있어서
  const getGoods = async () => {
    let response = await axios.get(`http://localhost:3004/goods_list/${id}`)
    console.log(id + '번 상품정보: ', response.data)
    setGood(response.data)
  }
  //useEffect()를 이용하여 getGoods 함수를 한 번만 호출하시오.
  useEffect(() => {
    getGoods()
  }, [])

  // 비동기처리로 처리했을떄 응답을 받아오는 데이터와 실행하는 속도가 차이가 있어서 오류가 발생할 수 있다.
  // 바로 쓸수 없는상태를 대비해서 state가 비어져있는지 조건부렌더링으로 확인한다.
  return (
    <div className="goods-detail-box">
      {/* good state에 정보가 있을 때 property에 접근하도록 조건부 렌더링 처리 */}
      {good ? (
        // <> 값을 비워두면 렌더링중에 div로 자동인식한다 .
        <>
          {' '}
          <div className="goods-detail-box-thumb">
            <img src={good.detail.sub_thumb} alt="이미지" />
          </div>
          <div className="goods-detail-box-info">
            <div className="goods-detail-title">
              <div className="goods-icon">
                {/* 해당 상품이 new인지 best인지 조건부 렌더링을 통해 출력하시오. */}
                {good.new ? (
                  <em className="goods-new">new</em>
                ) : good.best ? (
                  <em className="goods-best">best</em>
                ) : (
                  ''
                )}
              </div>
              <p className="goods-detail-name">{good.name}</p>
              <p className="goods-detail-txt">{good.detail.txt}</p>
              <div className="goods-detail-price-box">
                <strong>{good.price}</strong>
                <span>원</span>
              </div>
            </div>
            <div className="goods-detail-summary">{good.detail.summary}</div>
          </div>
        </>
      ) : (
        ''
      )}
    </div>
  )
}

export default GoodsDetail
