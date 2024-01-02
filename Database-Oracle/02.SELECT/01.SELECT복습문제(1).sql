
/* 
이전에 배운 내용을 복습해보기 위한 예시 문제입니다. 
먼저 아래와 같은 절차를 통해 테스트 데이터인 hr 계정의 잠금을 해제하겠습니다. 

1. SQL COMMAND LINE 을 접속해 CONN SYSTEM/12345; 을 입력해 관리자 계정으로 접속
2. Connected. 가 정상적으로 떴으면 아래 쿼리를 그대로 작성 후 엔터 
   => ALTER USER HR IDENTIFIED BY 12345 ACCOUNT UNLOCK ; 
3. User altered. 가 정상적으로 떴으면 현재 SQL DEVELOPER 의 왼쪽 상단 + 기호를 클릭해 DB 접속 처리 
   => name 은 HR , 사용자이름은 hr , 비밀번호는 12345 

아래부터는 문제입니다. 중간중간 빈 곳에 쿼리 입력 및 실행을 해보세요. (접속선택 창이 뜨면 hr 로 선택) 
문제 범위 [ SELECT 처음 ~ SELECT 연산/함수의 연결연산까지 ] 
*/ 




/*
1. COUNTRIES 라는 테이블에서 다음 컬럼만 출력해주세요. 
   추출할 컬럼 : COUNTRY_ID , COUNTRY_NAME 

[출력결과] (총 25행이 출력) 
COUNTRY_ID   COUNTRY_NAME    <--이건 컬럼이름 
    AR	     Argentina
    AU  	 Australia
    ...         ... 
    ZW     	 Zimbabwe
*/ 




/*
2. EMPLOYEES 라는 테이블에서 EMPLOYEE_ID , EMAIL , PHONE_NUMBER 컬럼만 출력하되, 
   각각 직원ID , 이메일 , 핸드폰번호 라는 별칭을 부여하여 출력해주세요. 
   
[출력결과] (총 107행이 출력) 
직원ID   이메일   핸드폰번호    <--이건 컬럼이름 
    AR	     Argentina
    AU  	 Australia
    ...         ... 
    ZW     	 Zimbabwe
*/ 





/*
3. JOBS 라는 테이블의 모든 컬럼이 추출되도록 데이터를 출력해주세요. 

[출력결과] (총 19 행) 
JOB_ID   JOB_TITLE                   MIN_SALARY   MAX_SALARY    <--이건 컬럼이름 
AD_PRES	 President	                    20080	    40000
AD_VP	Administration Vice President	15000	    30000
...        ...                           ...         ... 
HR_REP	Human Resources Representative	4000	    9000
PR_REP	Public Relations Representative	4500	    10500
*/




/*
4. EMPLOYEES 테이블에는 JOB_ID 컬럼이 있습니다. 
   이 JOB_ID 컬럼을 추출할 때 중복이 없이 출력되도록 해주세요. (출력순서는 상관없습니다) 
   
[출력결과] (총 19 행) 
JOB_ID      <--이건 컬럼이름
AC_ACCOUNT
AC_MGR
AD_ASST
AD_PRES
  ... 
ST_MAN

*/ 





/*
5. REGIONS 테이블을 활용하여 아래와 같이 데이터가 출력되도록 연결연산(||) 을 활용해 출력해주세요. 
   (출력 순서는 상관없습니다.)

[출력결과] (총 4행) 
지역ID가 1이면 Europe
지역ID가 2이면 Americas
지역ID가 3이면 Asia
지역ID가 4이면 Middle East and Africa
*/





/* 
6. EMPLOYEES 테이블에서 EMPLOYEE_ID 와 SALARY 를 출력해주세요.
   추가로 SALARY 에 1000 씩을 더해서 BONUS 라는 새로운 별칭을 통해 가공된 컬럼도 출력해주세요. 

[출력결과] (총 107행)
EMPLOYEE_ID   SALARY   BONUS    <--이건 컬럼이름 
    100	      24000	   25000
    101	      17000	   18000
    102	      17000	   18000
    ...        ...      ... 
    205 	  12008	   13008
    206	       8300	    9300    
*/ 








/****************************************************/

--1번 답) 
SELECT COUNTRY_ID 
     , COUNTRY_NAME 
  FROM COUNTRIES ;

--2번 답) 
SELECT EMPLOYEE_ID AS 직원ID 
     , EMAIL       AS 이메일 
     , PHONE_NUMBER AS 핸드폰번호 
  FROM EMPLOYEES ;

--3번 답) 
SELECT * FROM JOBS;

--4번 답) 
SELECT DISTINCT JOB_ID 
  FROM EMPLOYEES ;

--5번 답) 
SELECT '지역ID가 ' || REGION_ID || '이면 ' || REGION_NAME  
  FROM REGIONS;
  
--6번 답) 
SELECT EMPLOYEE_ID 
     , SALARY 
     , SALARY + 1000 AS BONUS 
  FROM EMPLOYEES  ;

