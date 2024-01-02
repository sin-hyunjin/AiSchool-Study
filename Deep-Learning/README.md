# 딥러닝 개발환경 구축 - 가상환경 생성

Jupyter -> Environments -> Create 생성 -> jupyter,tensorflow 검색 및 체크후 Aplly

## Google Colab

- 데이터를 영구적으로 보관하기위해 Google Drive 랑 같이쓰임

  - Drive mount :

           from google.colab import drive
           drive.mount('/content/drive')

content -> drive 폴더생성

conda activate deep_test -> conda deep_test로 접속

pip install jupyter tensorflow

<br>

### (1)

![스크린샷 2023-09-11 오후 4 10 18](https://github.com/sin-hyunjin/Ai_Deep_Learning/assets/116487398/b7d141c7-6a7e-4231-928f-e704dd9809a4)

### colab

![스크린샷 2023-09-11 오후 3 20 25](https://github.com/sin-hyunjin/Ai_Deep_Learning/assets/116487398/392faad7-b909-4e7f-b7d7-d2c11575b77b)

![스크린샷 2023-09-11 오후 3 44 36](https://github.com/sin-hyunjin/Ai_Deep_Learning/assets/116487398/ca5acfff-83a6-412b-a7d5-5bf514028a6c)

<br>

# 딥러닝 프레임워크

- pyTorch

- Tensorflow

# Ai_Deep_Learning

(단일) knn , DecisionRree, 선형회귀

(복합) Ensemble

> 딥러닝 -> 신경망 -> 선형모델

> 1. 선형모델 -> 데이터 (예측) -> 선형함수

## 1. 선형회귀 (Linear Regression)

- w₁, w₂, ..., wₙ은 가중치(weights)이며,
- x₁, x₂, ..., xₙ은 입력 변수(features)이고,
- b는 편향(bias)입니다.

선형 모델은 주로 다음과 같은 두 가지 주요 문제를 해결하는 데 사용됩니다:

1. **회귀 문제**: 연속적인 출력 값을 예측하는 데 사용됩니다. 예를 들어, 주택 가격을 예측하거나 수익과 같은 연속적인 값에 대한 예측에 사용됩니다.

2. **분류 문제**: 이진 분류 또는 다중 클래스 분류 문제를 해결하는 데 사용됩니다. 이를 통해 데이터를 여러 범주 중 하나로 분류할 수 있습니다. 예를 들어, 이메일 스팸 여부를 예측하거나 손으로 쓴 숫자를 0부터 9까지의 클래스 중 하나로 분류하는 데 사용됩니다.

<br>

### 1) 단순 선형 회귀 분석(Simple Linear Regression Analysis)

### 2) 다중 선형 회귀 분석(Multiple Linear Regression Analysis)

<br>

## 2. 비용 함수(Cost function) : 평균 제곱 오차(MSE)

# 퍼셉트론

y = wx + b

w1,w1 = 가중치(weight) - 각 입력 신호가 결과에 주는 영향력을 조절하는 매개 변수

b(편향)

## 퍼셉트론이란?

- 선형함수(Linear) + 활성화함수(Active)의 조합

입력값과 각 입력에 대한 가중치를 곱한 후, 이들을 모두 더하여 활성화 값(가중합)을 계산합니다.

활성화 값이 미리 정의된 임계값(threshold)과 비교됩니다.

활성화 값이 임계값보다 크면 출력으로 1을 반환하고, 그렇지 않으면 0을 반환합니다.

### 다층 퍼셉트론 MLP(Multilayer Perceptron)

퍼셉트로을 여려 개의 층으로 구성하여 만든 신경망
