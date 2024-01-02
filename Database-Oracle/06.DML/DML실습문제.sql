/* 
   DML 문법 문제를 풀이합니다 
   !!주의사항 
   ==> 각 문항을 정상적으로 풀고나면 반드시 COMMIT; 명령을 실행해주세요.
       그래야 데이터가 영구적으로 테이블에 반영이 됩니다. 
       만약 데이터를 잘못 처리했다면 ROLLBACK; 명령어로 되돌릴 수 있습니다.
       해당 문제 풀이전에 데이터클렌징 (sampleData.sql 재실행) 을 진행해주세요.
*/ 


/*
1. 중고거래플랫폼 N-TH-NEW에 새로운 회원이 회원가입을 했습니다.
   아래 입력된 데이터가 TB_CUST 테이블에 등록될 수 있도록 해주세요. 

데이터 => [  
CUST_ID      : 'HELLO' 
CUST_NAME    : '반가움'
PASSWD       : 'HELLO' 
JUMIN_NO     : '901212-1234567' 
BIRTH_DY     : (입력안했음) 
JOIN_DT      : SYSDATE 로 처리해주세요. 
DEL_YN       : 'N' 
SCORE        : 0 
MONEY        : 0 
]
*/ 




/*
2. 회원ID가 'C0004' 인 회원이 보유금액을 10000원 충전했습니다.  
   적절한 DML을 이용하여 데이터를 변경해주세요. 
   현재 C0004 회원은 보유금액이 400원입니다. 이를 10400원으로 만들어주세요. 
*/ 




/*
3. 회원 'C0002' 의 연락처 중에 구분코드가 '집' 인 연락처를 삭제(DELETE) 해주세요.  
   (연락처 정보는 TB_CUST_TEL 테이블에 있습니다) 
*/ 




/* 
4. (심화) 
    중고거래플랫폼은 특정회원이 상품을 구매하면 아래 순서대로 로직이 실행됩니다. 
    (1)해당 회원의 MONEY 에서 상품 가격만큼 가격을 차감한다. 
    (2)해당 상품을 품절처리(SOLD_OUT_YN ='Y') 처리한다.
    등등... 
      
예를 들어 TB_PRD 테이블에서 PRD_ID가 P0014인 상품을 회원C0002이 구매한다고 해보겠습니다.
그렇게 되면 TB_CUST 테이블에서 회원ID 가 C0002 인 대상의 MONEY에서 PRD_ID 가 P0014 인 상품의 가격(15000원) 을 차감합니다.
그리고나서 TB_PRD 테이블에 있는 SOLD_OUT_YN 컬럼을 'Y'로 변경하게 됩니다. 

위에서 입력한 내용을 쿼리로 작성해주세요.
힌트) TB_CUST 테이블과 TB_PRD 테이블에 각각 UPDATE를 수행합니다. 
*/






/*
5. 2023년을 맞이해 새로운 이벤트를 진행하려고 합니다. 
   회원들 중에 활동점수가 0 인 대상에게 활동점수를 20으로 업그레이드하려고 합니다. 
   적절한 쿼리를 작성해 활동점수가 0인 대상의 활동점수를 20으로 업그레이드 시켜주세요. 
*/





/*
6. 회원ID 가 'C0006' 인 회원이 연락처 정보를 변경했습니다. 
   변경하려는 정보는 다음과 같습니다.

   휴대폰 : '01099999999'
   집    : '0629999999' 

   TB_CUST_TEL 테이블의 데이터를 확인해서 이미 존재하는 연락처라면 UPDATE를 , 존재하지 않는 데이터라면 INSERT 를 통해 
   해당 데이터를 처리해주세요. 
   (힌트: SELECT * FROM TB_CUST_TEL WHERE CUST_ID = 'C0006' )
*/ 





/*
7. TB_PRD_IMG 테이블은 상품에 관련된 이미지 경로가 저장되어 있는 테이블입니다.
   중고거래플랫폼이 사정이 생겨서 확장자가 'png' 인 이미지는 모두 삭제를 하기로 하였습니다.
   적절한 조건을 이용해 IMG_PATH 값이 .png 로 끝나는 모든 데이터를 삭제해주세요. 
   실행 결과는 5건만 남으며 모두 .jpg 확장자만 남게 됩니다. 
*/ 





/* 
8. TB_GRADE 테이블의 모든 데이터를 삭제해주세요. 
*/ 



/*
9. (심화) 다음은 아이디 중복 체크 관련 로직을 구현하기 위해 작성해야 하는 요구사항입니다. 

    (1) 입력받은 아이디가 이미 TB_CUST 테이블에 있는지 확인한다 
    (2) 만약 입력받은 아이디가 존재한다면 회원가입할 수 없는 아이디 이므로 처리하지 않는다.
    (3) 만약 입력받은 아이디가 존재하지 않는다면 회원가입 처리를 한다.
    
    예) C0001 은 TB_CUST 조회결과,  이미 존재하므로 회원가입이 불가능한 아이디 (2) 
    예) C9999 은 TB_CUST 조회결과,  존재하지 않으므로 회원가입이 가능한 아이디 (3)

    아래에 두명의 회원이 각각 다음과 같은 데이터를 전달했습니다. 
    이를 확인하여 아이디가 이미 존재하는 회원은 회원가입을 하지 않고 , 
    존재하지 않는 회원만 회원가입하도록 쿼리를 작성해주세요.
    
    
<회원1이 입력한 데이터>

데이터 => [  
CUST_ID      : 'C0001' 
CUST_NAME    : '회원1'
PASSWD       : 'PASS111' 
JUMIN_NO     : '901211-1234567' 
BIRTH_DY     : '19901211'  
JOIN_DT      : SYSDATE 로 처리해주세요. 
DEL_YN       : 'N' 
SCORE        : 0 
MONEY        : 0 
] 

<회원2 이 입력한 데이터> 

데이터 => [  
CUST_ID      : 'C9999' 
CUST_NAME    : '회원2'
PASSWD       : 'PASS222' 
JUMIN_NO     : '941122-1234567' 
BIRTH_DY     : (입력안했음) 
JOIN_DT      : SYSDATE 로 처리해주세요. 
DEL_YN       : 'N' 
SCORE        : 0 
MONEY        : 0 
]

*/ 









--수고많으셨습니다. 