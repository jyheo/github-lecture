---
marp: true
theme: my-theme
paginate: true
headingDivider: 2
header: git/github - https://github.com/jyheo/github-lecture
footer: 
backgroundColor: #fff
---

# Git 원격 저장소
<!-- _class: lead -->
### Github
### 허준영(jyheo@hansung.ac.kr)


## 원격 저장소
- 공동 작업을 위해서는 공유 가능한 원격 저장소가 필요
- git이나 ssh를 이용하여 독립 서버를 만들 수도 있겠지만 
- github, gitlab, bitbucket과 같은 원격 저장소 서비스를 많이 이용함
    - 개인 개발자 뿐 아니라 회사에서도 편리하기 때문에 많이 사용함
- 본 강의 자료에서는 github을 기준으로 설명함

## Github
- 오픈 소스를 위한 최고의 원격 저장소
![](images/github.png)
- 비슷한 사이트
    - Bitbucket.org, gitlab.com


## Github 저장소 만들기
- Github에 계정을 만들고
    - 있다면 로그인하고
- [New repository] 녹색 버튼을 클릭
    ![](images/new-repo.png)


## Github 저장소 만들기
- README, gitignore, license 파일을 같이 생성할 수도 있음
    - **주의:** 기존의 로컬 저장소를 원격 저장소에 넣으려면 이 파일들을 생성하면 안됨!
![](images/new-repo2.png)

## Github 저장소 만들기
- README, gitignore, license 파일을 같이 생성한 경우
![](images/new-repo3.png)

## Github 저장소 만들기
- README, gitignore, license 파일을 생성하지 않은 경우
    - 즉 원격 저장소가 비어 있는 상태
    - 로컬 저장소를 원격 저장소에 넣는 방법
        ```bash
        $ git remote add origin https://github.com/jyheo/test2.git
        $ git branch -M master        [현재 브랜치 이름을 master로 변경,
                                         이미 master라면 할 필요 없음]
        $ git push -u origin master   [ -u 옵션은 tracking 브랜치 연결을 위해 필요]
        ```

## 원격 저장소 Clone
- 일반적으로 원격 저장소를 만들고, 로컬 저장소로 복제(clone)하는 것이 간편함
- clone할 원격 주소 알아오기  (github의 경우)
![](images/clone-url.png)
- ``` $git clone [원격 주소] ```
    ```bash
    $ git clone https://github.com/jyheo/test2.git
    Cloning into 'test2'...
    remote: Counting objects: 5, done.
    remote: Compressing objects: 100% (4/4), done.
    remote: Total 5 (delta 0), reused 0 (delta 0), pack-reused 0					
    Unpacking objects: 100% (5/5), done.
    Checking connectivity... done.
    $ ls test2                                 [test2라는 폴더가 새로 생성됨]
    LICENSE  README.md
    ```


## 원격 저장소 확인
- ``` $ git remote -v ```
    ```bash
    $ git remote -v
    origin	https://github.com/jyheo/test (fetch)
    origin	https://github.com/jyheo/test (push)
    ```
    - fetch 는 원격 저장소에서 로컬로 변경 이력을 가져 오는 것
    - push 는 로컬저장소에서 원격 저장소로 변경 이력을 보내는 것
    - 보통 fetch와 push 주소는 동일하지만, 특별한 경우 다를 수도 있음
        - code review system을 쓰는 경우
    - ``` $ git remote add ``` 를 이용하여 원격 저장소를 추가할 수도 있음
- git clone을 한 경우 origin이란 이름으로 원격 저장소가 자동으로 지정됨

## 원격 저장소 브랜치의 트래킹(tracking) 브랜치
- 본 강의 자료에 나온 방법으로 원격 저장소를 사용하면
    - git push -u origin master로 로컬 저장소 브랜치를 원격 저장소로 보낸 경우
    - git clone으로 로컬 저장소를 만든 경우
- 트래킹 브랜치가 자동으로 지정됨
- 트래킹 브랜치 확인 ``` $ git branch -vv ```
    ```bash
    $ git branch -vv
    * master 4a52752 [origin/master] test
    ```
    - master 브랜치가 원격 origin의 master 브랜치를 트래킹하고 있음
- 트래킹한다는 것은 로컬 브랜치가 특정 원격 브랜치와 연결됨을 의미
    - pull할 때 연결된 원격 브랜치로 pull함


## 원격 저장소에 로컬 저장소 변경 이력(커밋) 보내기
- ``` $ git push [원격 이름] [브랜치 이름] ```
    ```bash
    $ git commit -m "test"        [새 변경 이력 생성]
    [master 4a52752] test
    1 file changed, 1 insertion(+)
    create mode 100644 test.c
    $ git status                  [현재 상태 확인]
    On branch master
    Your branch is ahead of 'origin/master' by 1 commit.
    (use "git push" to publish your local commits)

    nothing to commit, working tree clean
    $ git push                    [git push 원격 이름과 브랜치 이름 생략]
    Username for 'https://github.com': jyheo
    Password for 'https://jyheo@github.com':
    Enumerating objects: 4, done.
    Counting objects: 100% (4/4), done.
    Delta compression using up to 16 threads
    Compressing objects: 100% (2/2), done.
    Writing objects: 100% (3/3), 275 bytes | 275.00 KiB/s, done.
    Total 3 (delta 0), reused 0 (delta 0)
    To https://github.com/jyheo/test-repo.git
    2bafe99..4a52752  master -> master
    ```

## 원격 저장소에 로컬 저장소 변경 이력(커밋) 보내기 (계속)
- **주의**
    - 여기에서 Username, Password는 github ID와 패스워드
    - git의 user.name, user.email과는 전혀 관련 없음!
- git push할 때 원격 이름을 생략하면 default는 origin
- git push할 때 브랜치 이름을 생략하면 로컬 브랜치와 동일한 이름의 원격 브랜치에 push함
    - 앞의 예에서는 로컬 브랜치 master를 원격 origin/master 브랜치로 push함
    - 즉, ``` $ git push origin master ``` 와 동일한 결과
- 보통 원격 이름과 브랜치 이름을 생략하고 ``` $ git push ``` 로 많이 사용
* github 웹으로 접속하여 변경된 내용 확인 가능


## 원격 저장소에서 최근 커밋(변경 이력) 가져오기
- 가져오기 전에 먼저 원격 저장소에 로컬 저장소 보다 새로운 커밋이 있어야 함
- github의 경우 웹으로 접속하여 파일을 변경하거나 생성할 수 있음
    - 이 예제에서는 README.md 파일에 "new test"라는 내용의 줄을 추가하여 수정한 것으로 함
- ``` $ git fetch [원격_이름] ```
    ```
    $ git fetch                  [원격 이름을 생략하면 default는 origin]
    remote: Enumerating objects: 5, done.
    remote: Counting objects: 100% (5/5), done.
    remote: Compressing objects: 100% (2/2), done.
    remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
    Unpacking objects: 100% (3/3), 654 bytes | 43.00 KiB/s, done.
    From https://github.com/jyheo/test-repo
    4a52752..8ef157d  master     -> origin/master
    $ cat README.md               [커밋을 가져오기만 하고 로컬 브랜치에 합치지는 않음]
    test
    ```

## 원격 저장소에서 가져온 커밋을 로컬 브랜치와 합치기
-  ``` $ git merge [원격_이름] ```
    ```bash
    $ git merge                  [원격 이름을 생략하면 default는 origin]
    Updating 4a52752..8ef157d
    Fast-forward
    README.md | 1 +
    1 file changed, 1 insertion(+)
    $ cat README.md
    test                       [합쳐진 결과로 한줄 추가된 것이 확인 됨]
    new test
    ```


## git pull = fetch + merge
- 로컬 브랜치가 원격 브랜치의 트래킹 브랜치로 되어 있는 경우
    - git fetch와 merge를 pull 명령어 한번으로 해결
- git push를 할 때 원격 저장소의 내용이 로컬 보다 더 최신 내용이라서 push가 거절될 때가 있음
    - 이런 경우 git push를 하기 전에 git pull을 먼저 하고 git push를 해야 함
    - 원격 브랜치의 내용을 로컬 브랜치에 merge후에 push를 해야 하기 때문임


## Github Pull Request
* 권한이 없는 다른 사용자의 저장소에 변경 요청을 하는 것.
    - 화면 오른쪽 위 Fork 버튼 (현재 로그인 ID: jyheo-st)
![](images/pull-request1.png)


## Github Pull Request
* jyheo/test를 Fork하여 나(jyheo-st)의 저장소로 복제해 옴
![](images/pull-request2.png)


## Github Pull Request
* 저장소 파일 변경
    - git을 이용하여 로컬로 가져와서 변경 후 push
    - 또는 웹에서 바로 편집 가능
    - New pull request 버튼, Create Pull Request
    ![](images/pull-request3.png)


## Github Pull Request
* **jyheo로 로그인하면** 아래와 같은 Pull request
![](images/pull-request4.png)


## Github 공동 작업 초간단 시나리오
* A가 오픈 소스 프로젝트 저장소 ‘bestsw’를 만들어 둔 상황
* B가 ‘bestsw’가 마음에 들어서 사용하다가 수정을 할 필요가 생겼음
* B는 Github의 ‘bestsw’ 저장소를 자신의 저장소로 fork해옴
* Fork한 ‘B/bestsw’를 수정
* 수정한 내용을 반영해달라고 A에게 pull request 보냄
* A가 B의 수정 내용을 반영
* A가 생각해보니 B가 프로젝트에 기여를 잘 할 것 같아서 공동 개발자(Collaborators)로 추가함
* 이제부터 B는 직접 ‘bestsw’ 저장소에 수정 할 수 있음


## Exercise
* https://github.com/jyheo/test 를 Fork
* Fork한 저장소를 로컬에 clone
* fork_pull_request.c를 정상 동작하도록 수정
* Commit/Push
* Pull request 생성
* Collaborator가 되면
    - 저장소(https://github.com/jyheo/test)를 clone
    - name 디렉터리 밑에 자신의 id나 이름으로 파일 생성
    - Commit/Push
    - 일정 시간 후에 다른 사람이 변경한 내용 가져오기(fetch/merge)
        ```
        $ git fetch origin
        $ git merge origin
        ```

