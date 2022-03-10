# spring mvc 구조의 여성의류 쇼핑몰

## 1. 개요

![메인페이지](https://user-images.githubusercontent.com/94607745/157224824-c4a64e13-79d6-4e70-a925-7fdcf030ec90.png)
spring framework를 이용한 여성의류 쇼핑몰입니다. 카테고리별 상품을 보며 장바구니, 주문를 할 수 있는 웹페이지 입니다.
(결재가능 기능은 아직 구현해보지 못하였습니다)
상품을 나열하는 형식은 게시판으로 표현하였으며, Q&A를 적는 방식은 댓글 형식으로 표현하였습니다.

## 2. 기술
Web Front : HTML , CSS, JavaScript, Bootstrap, jQuery<br>
Web Server : Java, Spring Framework, MyBatis, ApacheTomcat<br>
DBMS : Oracle<br>
개발환경 : SpringBoot, Maven<br>

## 3.database Er Diagram
![20220310_140822](https://user-images.githubusercontent.com/94607745/157594586-75d84ded-92f3-4777-8a47-b31872aa6581.png)

## 4. 기능<br>
1. 회원가입 & 로그인<br>
2. 카테고리별 상품보기, 상품상세 페이지보기<br>
3. 장바구니 담기<br>
4. 주문하기(수량선택하기, 주문목록보기, 수정하기, 취소하기)<br>
5. 후기, Q&A (상품 댓글방식)<br>
6. 관리자페이지(상품등록, 주문리스트보기, 댓글 리스트보기)<br>
