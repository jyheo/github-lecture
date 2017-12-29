layout: true
.top-line[]

---
class: center, middle
# Open Source Software

허준영(jyheo@hansung.ac.kr)

---
## 오픈 소스 소프트웨어 정의
* Open-source software (OSS) is computer software with its **source code made available with a license** in which the copyright holder **provides the rights to study, change, and distribute the software to anyone and for any purpose.**
* Open-source software may be **developed in a collaborative public manner.** According to scientists who studied it, open-source software is a prominent example of open collaboration.
from Wikipedia
* 오픈 소스 소프트웨어(open source software, OSS)는 **소스 코드를 공개해 누구나 특별한 제한 없이 그 코드를 보고 사용할 수 있는 오픈 소스 라이선스를 만족하는 소프트웨어를 말한다.** 통상 간략하게 오픈 소스라고 말하기도 한다.
	- 출처: 위키피디아

---
## 오픈 소스 소프트웨어 정의
* 단순 소스 공개가 OSS는 아님
* Free Redistribution
	- 무료
* Source Code
	- 소스 접근 가능, 컴파일 가능, 프로그래머가 이해/수정 가능한 형태
* Derived Works
	- 수정 및 재배포 가능
* 출처: https://opensource.org/osd

---
## OSS 장점
* 상용 소프트웨어에 비해 얻기 쉽고, 따라서 사용자 확대가 용이함.
	- 기업들이 자사의 SW를 OSS로 공개
* OSS 개발 방법은 신뢰성 있고 고 품질 소프트웨어를 빠르고 저비용으로 개발하는데 도움이 됨
	- 수 많은 개발자와 테스터(사용자)
	- 수 많은 검증된 무료 라이브러리
* 특정 회사 제품에 묶일 필요 없음
	- Freedom from vendor lock-in

---
## OSS 개발 방법
* 사용자를 공동 개발자로 취급함
* 초기 개발 단계에도 릴리즈
* 자주 통합
	- 심지어 매일 매일하는 경우도 있음
* 여러 버전을 제공
	- 개발자 버전: 기능은 더 많지만 버그도 많을 수 있는 버전
	- 안정화 버전: 더 안정적이지만 기능은 좀 적은 버전
* 모듈화
	- 동시에 개발이 가능하도록 독립적인 요소들로 잘 나뉘어져 있음
* 동적 의사 결정 구조

---
## OSS 개발 도구
* 버전 관리 시스템
	- 많은 개발자가 참여하기 위해 필수
	- CVS, SVN, Git
	- 지금은 Git이 대세!
* 이슈 트래커
	- 개발자, 사용자들의 의사소통(기능 요청, 버그 보고 등)
	- bugtrackers, mailling list, IRC
* 코드 리뷰 시스템
	- Gerrit, Gitlab, Rietveld
* 지속적 통합 시스템(Continuous Integration)
	- Travis-CI, Jenkins
	
---
## OSS 개발 도구
* 개발 도구에 대한 설문 (2016, Gitlab)
	- 98% of developers use open source tools at work
	- 92% of developers say they prefer Git repositories
	- 91% prefer to use the same development tools for work and personal projects
	- 81% say it’s critical for organizations to use the latest development tools
* 출처: https://page.gitlab.com/2016-Developer-Survey_2016-Developer-Survey.html

---
## OSS 현황
* 65% 회사가 OSS 사용 (2015년 60%)
	- 절반 가까운 회사가 OSS에 대한 정책(검증, 변경 추적, 취약점 파악 등) 부재
* 67% 회사가 개발자에게 OSS 기여 권장
	- 33% 회사가 풀타임 OSS 개발자 있음
* OSS 기여 이유
	- 버그 수정/ 기능 추가, 경쟁력 확보, 개발 비용 절감
* OSS 사용 이유
	- 품질, 좋은 기능/기술, 커스터마이즈 가능
* OSS 사용 부분
	- 운영체제, 데이터베이스, 개발 도구(73%가 Git 사용)
* OSS를 통한 수익
	- SaaS, 커스텀 개발, 서비스/지원
* 출처: http://www.slideshare.net/blackducksoftware/2016-future-of-open-source-survey-results

---
## OSS License
* 공개SW포탈
	- www.oss.kr
* 오픈소스SW 라이선스 종합정보시스템
	- https://www.olis.or.kr
	- 오픈 소스 라이선스, 프로젝트, 오픈 소스 사용여부 검사 등의 서비스 제공
	- 한국저작권위원회
* Open Source Initiative(OSI)
	- https://opensource.org/
	- 공개 소스 소프트웨어(OSS) 인증 마크
	- 오픈 소스 라이선스 인증
	- 비영리 단체

<img src="images/osi.png" style="position:absolute; bottom:100px; right:100px">

---
## OSS License 사용 현황
<img src="images/license.png">

.footnote[출처: https://www.blackducksoftware.com/top-open-source-licenses]

---
## OSS License
* 법률적 문제, 간단하지 않음
* Copyleft: 수정/재배포시 동일 라이선스 강제 조항
* GPL
	- Copyleft, 파생물/수정 사항 공개 의무
* LGPL
	- LGPL로 된 라이브러리를 사용한 경우 공개 의무가 없음
* MIT
	- Copyleft나 수정 사항 공개 등의 의무가 없음
	- GPL과 같은 제약이 없어 인기가 많음

---
## OSS License 위반 모니터링

<img src="images/oss-violation.png">

.footnote[출처: 국가R&D 공개SW 활용방안, NIPA, 2011]

---
## OSS 찾기
* Black Duck Open Hub
	- https://www.openhub.net
* Free Open Source Software
	- http://freeopensourcesoftware.org/
* 위키피디아 문서
	- https://en.wikipedia.org/wiki/List_of_free_and_open-source_software_packages

---
## Black Duck Open Hub
<img src="images/blackduck.png">

---
## Black Duck Open Hub
<img src="images/blackduck2.png">

---
## Reference
* 이 강의 자료에는 국민대 이민석 교수님의 자료에서 참고한 내용이 많습니다.
	- http://hl1itj.tistory.com/118
	