---
marp: true
theme: my-theme
paginate: true
headingDivider: 2
header: Open Source Software
footer: git/github - https://github.com/jyheo/github-lecture
backgroundColor: #fff
---

# Open Source Software
<!-- _class: lead -->
### 허준영(jyheo@hansung.ac.kr)


## 내용
- 오픈 소스 소프트웨어 정의
- 오픈 소스 소프트웨어 장점
- 오픈 소스 소프트웨어 개발 도구
- 오픈 소스 소프트웨어 라이선스
- 오픈 소스 소프트웨어 검색하기


## 오픈 소스 소프트웨어 정의
- Open-source software (OSS) is computer software that is released under a **license** in which the copyright holder grants users the **rights to use, study, change, and distribute the software and its source code to anyone and for any purpose.**
	- Open-source software may be **developed in a collaborative, public manner.** 
	- Open-source software is a prominent example of open collaboration, meaning any capable user is able to participate online in development, making the number of possible contributors indefinite. 
	- The ability to examine the code facilitates public trust in the software.
- 오픈 소스 소프트웨어(Open source software; OSS)는 **소스 코드를 공개해 누구나 특별한 제한 없이 그 코드를 보고 사용할 수 있는 오픈 소스 라이선스를 만족하는 소프트웨어**를 말한다. 

출처: Wikipedia(위키피디아)


## 오픈 소스 소프트웨어 정의
- 단순 소스 공개가 OSS는 아님
- Free Redistribution
	- 무료
- Source Code
	- 소스 접근 가능, 컴파일 가능, 프로그래머가 이해/수정 가능한 형태
- Derived Works (파생물)
	- 수정 및 재배포 가능

출처: https://opensource.org/osd


## OSS 장점
- 상용 소프트웨어에 비해 얻기 쉽고, 따라서 사용자 확대가 용이함.
	- 기업들이 자사의 SW를 OSS로 공개
- OSS 개발 방법은 신뢰성 있고 고 품질 소프트웨어를 빠르고 저비용으로 개발하는데 도움이 됨
	- 수 많은 개발자와 테스터(사용자)
	- 수 많은 검증된 무료 라이브러리
- 특정 회사 제품에 묶일 필요 없음
	- Freedom from vendor lock-in


## OSS 개발 방법
- 사용자를 공동 개발자로 취급함
- 초기 개발 단계에도 릴리즈
- 자주 통합
	- 심지어 매일 매일하는 경우도 있음
- 여러 버전을 제공
	- 개발자 버전: 기능은 더 많지만 버그도 많을 수 있는 버전
	- 안정화 버전: 더 안정적이지만 기능은 좀 적은 버전
- 모듈화
	- 동시에 개발이 가능하도록 독립적인 요소들로 잘 나뉘어져 있음
- 동적 의사 결정 구조


## OSS 개발 도구
- 버전 관리 시스템
	- 많은 개발자가 참여하기 위해 필수
	- CVS, SVN, Git
	- 지금은 Git이 대세!
- 이슈 트래커
	- 개발자, 사용자들의 의사소통(기능 요청, 버그 보고 등)
	- bugtrackers, mailling list, IRC
- 코드 리뷰 시스템
	- Gerrit, Rhodecode, Gitlab
- CI/CD(Continuous Integration/Continuous Delivery)
	- Travis-CI, Jenkins, Github Actions
	

## OSS License
- 공개SW포탈
	- www.oss.kr
- 오픈소스SW 라이선스 종합정보시스템
	- https://www.olis.or.kr
	- 오픈 소스 라이선스, 프로젝트, 오픈 소스 사용여부 검사 등의 서비스 제공
	- 한국저작권위원회
- Open Source Initiative(OSI)
	- https://opensource.org/
	- 공개 소스 소프트웨어(OSS) 인증 마크
	- 오픈 소스 라이선스 인증
	- 비영리 단체
	![w:100px](images/osi.png)


## OSS License
- 법률적 문제, 간단하지 않음
- Copyleft: 수정/재배포시 동일 라이선스 강제 조항
- GPL
	- Copyleft, 파생물/수정 사항 공개 의무
	- 명시적 특허 사용 허락 (3.0부터)
- LGPL
	- LGPL로 된 라이브러리를 사용한 경우 공개 의무가 없음
- MIT
	- Copyleft나 수정 사항 공개 등의 의무가 없음
- Apache 2.0
	- Copyleft나 수정 사항 공개 등의 의무가 없음
	- 명시적 특허 사용 허락
- MIT(90% 이상)와 Apache 2.0이 가장 많이 사용됨


## OSS License 위반 모니터링

![](images/oss-violation.png)

출처: 국가R&D 공개SW 활용방안, NIPA, 2011


## OSS 찾기
- Black Duck Open Hub
	- https://www.openhub.net
- Free Open Source Software
	- http://freeopensourcesoftware.org/
- 위키피디아 문서
	- https://en.wikipedia.org/wiki/List_of_free_and_open-source_software_packages


## Black Duck Open Hub
![](images/blackduck2.png)


## 기업에서 OSS 사용 현황
- 절반 이상의 소프트웨어 회사가 OSS 사용
	- 절반 가까운 회사가 OSS에 대한 정책(검증, 변경 추적, 취약점 파악 등) 부재
- 회사가 개발자에게 OSS 기여 권장
	- 상당 수 회사가 풀타임 OSS 개발자 있음
- OSS 기여 이유
	- 버그 수정/ 기능 추가, 경쟁력 확보, 개발 비용 절감
- OSS 사용 이유
	- 품질, 좋은 기능/기술, 커스터마이즈 가능
- OSS 사용 부분
	- 운영체제, 데이터베이스, 개발 도구(많은 회사가 버전관리로 Git 사용)
- OSS를 통한 수익
	- SaaS, 커스텀 개발, 서비스/지원

# Q&A
<!-- _class: lead -->