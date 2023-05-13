head(iris)
plot(iris$Petal.Length~iris$Petal.Width, data=iris) # 산점도를 통해 선형 관계 확인

model <- lm(iris$Petal.Length~iris$Petal.Width, iris)           # 회귀모델 구하기
model

abline(model)                           # 회귀선을 산점도 위에 표시
coef(model)[1]                          # b 값 출력
coef(model)[2]                          # W 값 출력
