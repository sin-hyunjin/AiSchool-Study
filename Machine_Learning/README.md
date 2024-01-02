- [머신러닝 학습 - 7단계](./Machine_Learning/README.md)

- [AI_Machine_Learning](#ai_machine_learning)

- [인공지능 역사](#인공지능-역사)

- [Rule-based Expert system](#rule-based-expert-system)

- [Machine_Learning_type](#머신러닝-종류)

- [일반화,과대적합,과소적합](#일반화--과대적합--과소적합)

  <br>

# 학습도구

![스크린샷 2023-08-21 오전 11 45 23](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/51483e0b-7ab5-4d0a-984f-482858810277)

<br>

# Machine_Learning

- **Machine Learning** : 2D, 표 형태의 데이터 --> 규칙을 찾아내는 과정

- **Deep Learning** : 3D, 영상, 음성, 이미지

<br>

## 머신러닝(Machine Learing) 이란?

![스크린샷 2023-08-21 오전 10 28 58](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/7c151bf7-3649-4473-9d26-5d8820f9e9ee)

    머신러닝은 데이터를 기반으로 패턴을 학습하여 문제를 해결하는 인공 지능 분야입니다.

- **데이터 기반 학습:** 모델은 데이터를 기반으로 패턴을 학습하며, 사전 프로그래밍 없이 스스로 학습과 예측을 수행합니다.

- **다양한 학습 유형:** 지도 학습, 비지도 학습, 강화 학습 등 다양한 학습 방법이 존재하며, 각각 다른 문제에 적용됩니다.

- **다양한 응용 분야:** 의료, 금융, 자연어 처리, 이미지 인식, 자율 주행 자동차 등 다양한 분야에서 사용됩니다.

<br>

> ## Enigma(에니그마)
>
> - 1950 '컴퓨터 기계과 지능' 논문

<br>

> ## Turing Test(튜링테스트)
>
> - 기계가 사람처럼 애기하는 것 (사람처럼 생각을 하며 대답을한다.)

<br>

# 인공지능 역사

![스크린샷 2023-08-21 오전 9 22 10](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/94c7ccd5-17e2-472a-9855-9e496c77cd12)

<br>

> ## 1. 초기 개념

- **1950년대** : 인공지능 개념이 처음 소개되었으며, Alan Turing의 "계산 기계와 지능" 논문이 AI에 대한 이론적 기초를 제공함.

- **1956년** : AI 연구를 촉진하기 위해 Dartmouth 학회에서 AI 워크샵 개최.

<br>

> ## 2. 약진과 어려움

- **1960년대** : AI 연구가 초기 개념 단계를 벗어나고, "논리 기반 AI" 및 "기호 주의 AI"라는 개념이 발전.

- **1970년대** : 초기의 대기대기한 AI 약진 후 "AI 겨울"이라 불리는 어려움 기간 돌입.

<br>

> ## 3. 전문 분야와 신경망

- **1980년대** : 전문 분야 AI, Expert Systems가 주목받음.

- **1980년대 후반** : 신경망 및 기계 학습 기술의 부상으로 AI 연구가 재기함.

<br>

> ## 4. 인공지능의 부활

- **2000년대 이후** : 대량 데이터와 컴퓨팅 파워의 증가로 딥러닝 및 심층 학습이 부상.

- **2010년대** : 이미지 인식, 자연어 처리 및 게임에서 AI의 엄청난 발전을 볼 수 있음.

<br>

> ## 5. 현재와 미래

- **2020년대** : 인공지능은 자율 주행 자동차, 의료 진단, 언어 번역 및 보안 분야에서 혁신을 이루고 있음.

- **미래** : AI 연구는 계속 발전하며, 윤리적 및 사회적 이슈에 대한 논의도 더욱 중요해질 것으로 예상됨.

<br>

# Rule-based Expert system

![스크린샷 2023-08-21 오전 10 11 24](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/b15ee3e1-9b04-4ac8-b6bb-9ed93e243691)

    Rule-based Expert System은 컴퓨터 프로그램의 형태로 구현된 지식 기반 시스템으로, 전문가 수준의 지식과 추론 능력을 모방하여 특정 도메인(분야)에서 문제 해결을 돕는 데 사용됩니다.

> - **지식 베이스(Knowledge Base):** Expert System의 핵심 부분 중 하나로, 특정 도메인에 관련된 지식과 규칙이 저장되는 곳입니다. 이 지식은 전문가가 가진 경험과 지식을 반영합니다.

> - **규칙(규칙 세트):** 규칙 기반 시스템은 "IF-THEN" 형식의 규칙을 사용합니다. 예를 들어, "만약 상황 A가 발생하면 동작 B를 수행하라"와 같은 규칙이 있을 수 있습니다. 이러한 규칙들은 전문가의 지식을 캡슐화하고, 시스템이 문제를 해결하는 데 사용됩니다.

> - **추론 엔진(Inference Engine):** Expert System은 지식 베이스에서 규칙을 추론하고 실행하기 위한 추론 엔진을 사용합니다. 이 엔진은 주어진 상황에 대한 규칙을 적용하고, 결과를 도출합니다.

> - **사용자 인터페이스:** Expert System은 사용자와 상호 작용할 수 있는 인터페이스를 가질 수 있으며, 사용자로부터 질문을 받고 답변을 기반으로 규칙을 실행하여 문제를 해결합니다.

> - **실제 활용 분야:** 규칙 기반 전문 시스템은 의료 진단, 기술 지원, 금융 분야, 제조업, 환경 모니터링 등 다양한 분야에서 사용됩니다. 예를 들어, 의료 분야에서는 환자의 증상을 기반으로 질병을 진단하거나 치료 방법을 제안하는 데 사용됩니다.

<br>

## Rule-based Expert system 문제점

![스크린샷 2023-08-21 오전 10 17 47](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/6ab8e483-c9bf-4e1b-930a-889084f0b1d5)

<br>

# 머신러닝 종류

<br>

## 1. **지도 학습 (Supervised Learning):**

- 레이블이 지정된 데이터를 사용하여 모델을 학습합니다. 주로 분류(Classification)와 회귀(Regression) 문제에 사용됩니다.

![스크린샷 2023-08-21 오전 10 39 28](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/299ffab7-518b-4514-ba3a-b0b54c1681e9)

### 분류

- 정답의 종류가 정해져 있음

![스크린샷 2023-08-21 오전 10 48 43](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/48bc3062-f723-4a5f-b8b5-fa4b86e85ee7)

<br>

### 회귀

- 정답의 종류가 전해져 있지 않음.
- 정답의 미묘한 차이가 크게 중요하지 않음

![스크린샷 2023-08-21 오전 11 06 00](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/eeba0ca8-83d7-404a-ac35-a0a332e998bd)

![스크린샷 2023-08-21 오전 11 12 38](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/f0189645-a940-4401-8871-7e193b70e3fb)

<br>

## 2. **비지도 학습 (Unsupervised Learning):**

- 레이블이 없는 데이터를 기반으로 모델이 스스로 패턴을 찾습니다. 주로 군집화(Clustering)와 차원 축소(Dimensionality Reduction)에 사용됩니다.

![스크린샷 2023-08-21 오전 11 15 59](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/dd57b296-957b-462e-9382-d94d8e47f1e6)

![스크린샷 2023-08-21 오전 11 16 47](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/0d345bb1-f7ef-4f2c-a2c3-9f1fe06f3a46)

- 클러스터링(군집) : 문제만 학습을 시켜서 특징이 비슷한 것끼리 그룹을 지어줌

- 차원축소 : 가지고 있는 데이터의 차원을 줄임. 데이터는 작아지지만 의미가 많은 데이터 남김(의미가 없는 데이터를 줄여주는 방법)

<br>

## 3. **강화 학습 (Reinforcement Learning):**

- 에이전트가 환경과 상호 작용하며 보상을 최적화하기 위한 행동을 학습합니다. 주로 게임, 로봇 제어 등에 사용됩니다.

![스크린샷 2023-08-21 오전 10 41 33](https://github.com/sin-hyunjin/AI_Machine_Learning/assets/116487398/093d786f-c8c2-4adf-a93b-7367b2fb9efd)

- 지도학습과 유사. 정확한 정답 X

  <br>

## 4. **준지도 학습 (Semi-Supervised Learning):**

- 일부 데이터에만 레이블이 있고 나머지는 레이블이 없는 경우 사용됩니다. 지도 학습과 비지도 학습의 결합입니다.

<br>

## 5. **자기 지도 학습 (Self-Supervised Learning):**

- 데이터 자체에서 레이블을 생성하고 학습하는 방식입니다. 주로 자연어 처리와 컴퓨터 비전 분야에서 사용됩니다.

<br>

## 6. **배치 학습 (Batch Learning):**

- 전체 데이터셋을 사용하여 모델을 학습하는 방식입니다.

<br>

## 7. **온라인 학습 (Online Learning):**

- 데이터를 순차적으로 한 개 또는 작은 묶음 단위로 모델을 업데이트하는 방식입니다.

<br>

## 8. **전이 학습 (Transfer Learning):**

- 한 작업에서 학습한 모델을 다른 작업에 적용하는 방식입니다.

<br>

## 9. **앙상블 학습 (Ensemble Learning):**

- 여러 다른 모델을 결합하여 더 강력한 예측 모델을 만드는 방식입니다.

<br>

## 10. **시퀀스 학습 (Sequence Learning):**

- 순차 데이터에 대한 학습, 주로 자연어 처리 및 시계열 예측에 사용됩니다.

<br>

# K-Nearest Neighbors (KNN)

![스크린샷 2023-08-23 오전 9 44 27](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/b3371b3c-0863-4135-9cdc-c6dddcf22dfa)

![스크린샷 2023-08-23 오전 9 45 22](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/848cc112-9b7d-4b81-bf96-0496b0ce4f87)

- 키(p1)와 몸무게(p1) 데이터라고 정의하는 방식

<br>

### KNN 장단점

- 이해하기 매우 쉽고 조정 없이도 좋은 성능을 발휘하는 기초 모델

- 훈련 데이터 세트가 크면(특성, 데이터 수) 예측이 느려짐

- 거리를 측정하기 떄문에 데이터의 스케일(scale) 조정이 필요

- 직접적인 예측에 사용되기 보다는 주로 데이터를 파악하기 위한 용도로 가볍게 사용

<br>

# 일반화 , 과대적합 , 과소적합

모델의 신뢰도를 확인하는 작업

![스크린샷 2023-08-23 오전 10 18 09](https://github.com/sin-hyunjin/JSA_Machine_Learning/assets/116487398/2399f939-4a9e-447c-8465-afcfd52a0fe4)
