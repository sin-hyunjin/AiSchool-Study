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

INSERT INTO TB_CUST ( 
       CUST_ID
     , CUST_NAME
     , PASSWD
     , JUMIN_NO
     , JOIN_DT
     , DEL_YN
     , SCORE
     , MONEY
) VALUES ( 
       'HELLO'
     , '반가움'
     , 'HELLO'
     , '901212-1234567' 
     , SYSDATE
     , 'N'
     , 0
     , 0
); 

COMMIT; 




/*
2. 회원ID가 'C0004' 인 회원이 보유금액을 10000원 충전했습니다.  
   적절한 DML을 이용하여 데이터를 변경해주세요. 
   현재 C0004 회원은 보유금액이 400원입니다. 이를 10400원으로 만들어주세요. 
*/ 

UPDATE TB_CUST 
   SET MONEY = MONEY + 10000 
 WHERE CUST_ID = 'C0004';  

COMMIT; 



/*
3. 회원 'C0002' 의 연락처 중에 구분코드가 '집' 인 연락처를 삭제(DELETE) 해주세요.  
   (연락처 정보는 TB_CUST_TEL 테이블에 있습니다) 
*/ 

DELETE FROM TB_CUST_TEL 
 WHERE CUST_ID = 'C0002'
   AND TEL_DVCD = '집' ; 
   
COMMIT ;   



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

UPDATE TB_CUST 
   SET MONEY = MONEY - 15000
 WHERE CUST_ID = 'C0002';

UPDATE TB_PRD 
   SET SOLD_OUT_YN = 'Y'  
 WHERE PRD_ID = 'P0014';
 
COMMIT; 




/*
5. 2023년을 맞이해 새로운 이벤트를 진행하려고 합니다. 
   회원들 중에 활동점수가 0 인 대상에게 활동점수를 20으로 업그레이드하려고 합니다. 
   적절한 쿼리를 작성해 활동점수가 0인 대상의 활동점수를 20으로 업그레이드 시켜주세요. 
*/

UPDATE TB_CUST 
   SET SCORE = 20 
 WHERE SCORE = 0 ;

COMMIT; 


/*
6. 회원ID 가 'C0006' 인 회원이 연락처 정보를 변경했습니다. 
   변경하려는 정보는 다음과 같습니다.

   휴대폰 : '01099999999'
   집    : '0629999999' 

   TB_CUST_TEL 테이블의 데이터를 확인해서 이미 존재하는 연락처라면 UPDATE를 , 존재하지 않는 데이터라면 INSERT 를 통해 
   해당 데이터를 처리해주세요. 
   (힌트: SELECT * FROM TB_CUST_TEL WHERE CUST_ID = 'C0006' )
*/ 

SELECT * 
  FROM TB_CUST_TEL 
 WHERE CUST_ID = 'C0006' ;  --집 정보는 있으므로 업데이트 , 휴대폰 정보는 없으므로 인서트 


UPDATE TB_CUST_TEL 
   SET TEL_NO = '0629999999'
 WHERE CUST_ID = 'C0006'
   AND TEL_DVCD = '집'; 

--휴대폰 연락처는 따로 없으므로 INSERT 를 해준다. 
INSERT INTO TB_CUST_TEL ( 
       CUST_ID
     , TEL_DVCD
     , TEL_NO 
) VALUES ( 
       'C0006'
     , '휴대폰'
     , '01099999999' 
);
COMMIT; 


/*
7. TB_PRD_IMG 테이블은 상품에 관련된 이미지 경로가 저장되어 있는 테이블입니다.
   중고거래플랫폼이 사정이 생겨서 확장자가 'png' 인 이미지는 모두 삭제를 하기로 하였습니다.
   적절한 조건을 이용해 IMG_PATH 값이 .png 로 끝나는 모든 데이터를 삭제해주세요. 
   실행 결과는 5건만 남으며 모두 .jpg 확장자만 남게 됩니다. 
*/ 

DELETE FROM TB_PRD_IMG 
 WHERE IMG_PATH LIKE '%.png';
  
COMMIT ;




/* 
8. TB_GRADE 테이블의 모든 데이터를 삭제해주세요. 
*/ 

DELETE FROM TB_GRADE ;
COMMIT; 


--수고많으셨습니다. 