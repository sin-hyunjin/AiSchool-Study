- [SQLD 자격증](./SQLD/)

# 기본설정

### 🤔 Mac에서 Oracle SQL Developer 실행하기

https://www.oracle.com/database/sqldeveloper/technologies/download/

url로 들어간 화면에서 Mac OSX 의 Download 를 클릭하기

### Docker 설치하기 (colima 사용)

https://docs.docker.com/desktop/install/mac-install/

맥에 Oracle을 설치하려면 가상 머신과 비슷한 Docker 컨테이너를 통해야 한다.

#### 터미널에 colima 다운로드

    $ brew install colima

#### 이미지 다운로드하기 ( jaspeen/oracle-xe-11g 이라는 이미지를 사용하였다.)

    $ docker pull jaspeen/oracle-xe-11g

#### 컨테이너와 로컬을 연결시켜주는 작업 , 1521 기본포트 사용하기

    $ docker --name 컨테이너 이름 run -e oracle_password 설정할 비밀번호 입력 -d -p 8080:8080 -p 1521:1521 		jaspeen/oracle-11g (다운받은 이미지 입력)

#### 컨테이너 이름바꾸기 (부가정보)

    $ docker rename <현재 컨테이너 이름> <새 컨테이너 이름>

#### 컨테이너 이름 정보 확인 (부가정보)

    $ docker ps -a

#### colima 실행하기

    $ colima start --memory 4 --arch x86_64

#### log 확인

    $ docker logs -f 컨테이너이름

#### 터미널로 SQL 접속 방법

    $ docker exec -it 컨테이너이름 sqlplus

(관리자 계정 접속 아이디랑 비밀번호 설정안했을시 기본 system/pass)

#### 관리자 계정접속

    SQL> CONN SYSTEM/PASS

#### USER계정 생성하는 방법 (한줄씩 입력해야한다.)

    SQL> CREATE USER {사용할이름} IDENTIFIED BY {사용할비밀번호};

    SQL> GRANT RESOURCE, CONNECT TO {사용할이름};

    SQL> grant create session, create table, create procedure to {사용할이름};

    SQL> ALTER USER {사용할이름} quota unlimited on USERS;

    SQL> SELECT FILE_NAME FROM DBA_DATA_FILES WHERE TABLESPACE_NAME = 'SYSTEM';

명령 실행시 출력되는 FILE_NAME을 복사하여 아래에 작성한다.

    SQL> ALTER DATABASE DATAFILE '파일이름' RESIZE 2G ;

이후 Developer클릭스 만든 계정으로 접속해서 사용하면 된다.

#### 한글꺠진파일 한글로 변환하기

    $ iconv -c -f euc-kr -t utf-8 기존파일이름 > 변환할파일이름

---

# SQL이란 ?

## SQL ( Structured Query Language) 구조화된 질의 언어

관계형 데이터베이스에서 데이터를 조작하고 쿼리하는 표준 언어이다.

RDBMS에게 사용자가 원하는 것을 요청하는 방법

RDBMS의 종류 : 오라클, MySql, mariaDB, ms-sql, postgresql, greenplum

## 테이블이란?

- entity를 물리적 모델링한 결과로 데이터를 저장하는 저장소 기능을 가진다.
- RDBMS 기본적 저장 구조이고, 한 개 이상의 열과 0개 이상의 행으로 구성된다.

### [테이블은 2차원의 행,열 형태를 유지합니다.

![스크린샷 2023-07-21 오후 12 23 23](https://github.com/sin-hyunjin/Database_oracle/assets/116487398/da91c596-7a05-4e62-8e60-367042d3d031)

- 이 테이블은 10개의 행(튜플) 과 9개의 열(컬럼)으로 구성되어 있습니다

| 제목    | 내용    | 설명    |
| ------- | ------- | ------- |
| 테스트1 | 테스트2 | 테스트3 |
| 테스트1 | 테스트2 | 테스트3 |
| 테스트1 | 테스트2 | 테스트3 |

## SQL 문법 실행 순서

- [5] **SELECT** 출력하고 싶은 컬럼만 작성하기
- [1] **FROM** 데이터를 가져올 테이블 입력
- [2] **WHERE** 원하는 튜플만 가져오도옥 필터링
- [3] **GROUP BY** 특정 컬럼을 기준으로 그룹화
- [4] **HAVING** 그룹화 상태의 데이터를 필터링
- [6] **ORDER BY** 특정 컬럼으로 정렬하기
