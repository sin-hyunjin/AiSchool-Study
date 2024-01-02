1. [머신러닝](#머신러닝-학습---7단계)

2. [Decision ](#decision---용어정리)

3. [버섯데이터](#ex04_버섯데이터)

4. [회귀분석](#머신러닝에서의-회귀regression-분석)

   <br>

# 머신러닝 학습 - 7단계

[1. 문제정의 (Problem Identification)](#1-문제정의-problem-identification)

[2. 데이터 만들기](#2-데이터-만들기)

[3. 데이터 전처리](#3-데이터-전처리)

[4. 탐색적데이터분석 (EDA)](#4-탐색적데이터분석-eda)

[5. 모델생성, 하이퍼파라미터 정의(튜닝)](#5-모델생성-하이퍼파라미터-정의튜닝)

[6. 학습](#6-학습)

[7. 평가](#7-평가)

<br>

### AND 연산

![스크린샷 2023-08-23 오전 9 02 18](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/f361598f-77ad-4f1f-8870-f16b40c313dd)

<br>

### 1. 문제정의 (Problem Identification)

- 비즈니스 목적 정의 : 모델을 어떻게 사용해 이익을 얻을까?

- 현재 솔류션의 구성 파악

- 지도 vs 비지도 vs 강화

- 분류 vs 회귀

<br>

### 2. 데이터 만들기

- 기존에 수집된 데이터 활용(CSV, XML, JSON)

- Database에 저장된 데이터 활용

- Web Crawling (유튜브, SNS, 블로그등)

- 설문조사

<br>

### 3. 데이터 전처리

- 결측치 및 이상치 처리(삭제 or 대체-평균값, 중간값, 예측값 등)

- 특성 공학(Feature Engineering)

  - Scaling (단위변환)

  - TransFrom (새로운 속성 추출)

  - Encoding (범주형 -> 수치형)

  - Binning (수치형 -> 범주형 )

  <br>

### 4. 탐색적데이터분석 (EDA)

- 기술통계 , 변수간 상관관계

- 시각화 : pandas, matplotlib, seaborn

- Feature Selection (사용할 특성 선택 )

<br>

### 5. 모델생성, 하이퍼파라미터 정의(튜닝)

![스크린샷 2023-08-23 오전 9 26 03](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/32f14c85-dbb5-4d7a-81ea-fa03a13c9426)

- 목적에 맞는 적절한 모델선택

- KNN, SVM, Linear Regression, Ridge, Lasso, Decision Tree, Random forest, CNN, RNN ...

- Hyper Parameter : 모델의 성능을 개선하기 위해 사람이 직접 넣는 parameter

<br>

### 6. 학습

![스크린샷 2023-08-23 오전 9 27 48](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/25e31b65-4f6e-4e43-b52d-ee641d885ed8)

- model.fit(X_train, y_train)
  - Train 데이터와 test 데이터를 7:3 정도로 나눔 (정확도를 위해 8:2 까지도 나눌수 있음)

<br>

### 7. 평가

- model.predict(X-test)

- 정확도(Accuracy)

- 재현율(Recall)

- 정밀도(Precision)

- f1 score

<br>

### 정리

![스크린샷 2023-08-23 오전 9 32 16](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/7d7aa3aa-4936-4fcc-84bb-814741c74b6b)

<br>

<br>

# ex04\_버섯데이터

<br>

# Decision - 용어정리

- 필요한 라이브러리

```python

from sklearn.tree import DecisionTreeClassifier

```

- 결정 트리 분류 모델 생성 함수 호출 및 객체 생성

```python

tree_model = DecisionTreeClassifier(하이퍼 파라미터)

```

<br>

## 주요 매개변수(Hyperparameter)

![스크린샷 2023-08-24 오전 10 21 16](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/8bf68157-5b7e-44e2-b868-3a6d36eba804)

<br>

## 과대 적합 제어(Hyperparameter )

![스크린샷 2023-08-24 오전 10 26 10](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/e35791d3-1993-4e55-914b-2c6b967fb71e)

- max

- min

### 장점

- 만들어진 모델을 시각화 할수 있음 **(white box model)**

- 각 특성이 개별 처리되기 떄문에 데이터 스케일이나 정규화 등 **전처리가 불필요**

- **특성 선택(Feature selection) 에 활용**

### 단점

- 훈련데이터 범위 밖의 포인트는 예측할 수 없음

- 가지치기를 사용함에도 불구하고 **과대적합 되기 쉽고 일반화 성능도 좋지않음**

![스크린샷 2023-08-24 오전 9 36 56](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/92aec4d9-2e87-4b29-9cd0-c9367e81dbfd)

- (Decision)은 특정 상황 또는 문제에 대해 선택을 내리는 과정 또는 결과를 의미하고 이는 주어진 정보와 조건을 고려하여 여러 가지 옵션 중 하나를 선택하는 행위로, 조직 또는 개인이 어떤 방향을 선택하고 추진하는 중요한 결정들이 비즈니스 및 개인 생활에서 일상적으로 이루어진다.

<br>

# Decision Tree - 불순도(Impurity)

- 데이터 분류 또는 예측 모델을 만들기 위한 머신러닝 알고리즘

- 분할하는데 사용되며, 분할 기준으로 불순도(Impurity)를 고려한다.

<br>

## 지니불순도( Gini Impurity)

![스크린샷 2023-08-24 오전 10 02 51](https://github.com/doyou1/web-front-clone-sinhj/assets/116487398/8a591ce6-edb9-4d39-ac73-94d46fca5cdc)

![스크린샷 2023-08-24 오전 10 08 08](https://github.com/doyou1/web-front-clone-sinhj/assets/116487398/fab69c63-3d63-4877-89bc-1ba823171e3d)

- A를 기준으로 분할했을 떄

![스크린샷 2023-08-24 오전 10 09 27](https://github.com/doyou1/web-front-clone-sinhj/assets/116487398/048fcd2a-64af-4ffb-bdaf-c53df97c07de)

<br>

- B를 기준으로 분할했을 때

![스크린샷 2023-08-24 오전 10 12 20](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/e3435435-2200-48e7-ac3f-69808502370b)

<br>

# 머신러닝에서의 회귀(Regression) 분석?

![스크린샷 2023-09-04 오전 9 19 29](https://github.com/pass98/marchin/assets/116487398/1e88882f-d193-40e0-9b73-16da4c0d51e7)

> - 연속 숫자를 포함하는 머신러닝 문제 해결에 필수적, 딥 러닝 이론의 기초

> - 입력 특성에 대한 선형 함수를 만들어 예측을 수행

> - 다양한 선형 모델이 존재

> - 분류와 회귀에 모두 사용 가능
