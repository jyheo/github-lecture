---
marp: true
theme: my-theme
paginate: true
headingDivider: 2
header: git/github - https://github.com/jyheo/github-lecture
footer: 
backgroundColor: #fff
---

# Git Remote Branch
<!-- _class: lead -->
### Github
### 허준영(jyheo@hansung.ac.kr)


## 원격 브랜치 Remote Branch
- 원격 브랜치는 단순히 원격 저장소의 브랜치를 가리키는 포인터  
![](images/rbranch.png)

출처: https://git-scm.com/book/en/v2/Git-Branching-Remote-Branches


## 원격 브랜치 Remote Branch
- 내가 clone한 이후에 원격 저장소에 누군가 commit(31b8e, 190a3)을 push하였고, 나는 로컬 저장소에 commit(a38de, 893cf)을 수행하였음  
![](images/rbranch2.png)


## 원격 브랜치 Remote Branch
- $ git fetch origin
	- 원격지 origin의 최신 내용(커밋)을 가져옴  
	![](images/rbranch3.png)
	- 현재 브랜치(여기에서는 master)에 원격지에서 가져온 것을 머지하려면.
	- ``` $ git merge origin/master ```


## 로컬 브랜치 Push
- 브랜치를 원격지에 올려서 공유하기
	```bash
	$ git branch testing                                [로컬 브랜치]
	$ git checkout testing
	Switched to branch 'testing'
	$ touch testfile
	$ git add testfile
	$ git commit -m "testfile added"
	[testing daf25d2] testfile added
	 1 file changed, 0 insertions(+), 0 deletions(-)
	 create mode 100644 testing
	$ git push -u origin testing                           [원격지 origin에 testing 브랜치 push]
	Username for 'https://github.com': jyheo
	Password for 'https://jyheo@github.com':
	Counting objects: 3, done.
	Delta compression using up to 4 threads.
	Compressing objects: 100% (2/2), done.
	Writing objects: 100% (3/3), 271 bytes | 0 bytes/s, done.
	Total 3 (delta 1), reused 0 (delta 0)
	remote: Resolving deltas: 100% (1/1), completed with 1 local objects.
	To https://github.com/jyheo/test.git
	 * [new branch]      testing -> testing
	```


## 로컬 브랜치 Push
- 원격지에 새로 testing 브랜치가 push된 것을 확인
![](images/rbranch-push.png)


## 원격 저장소 브랜치 로컬로 가져오기
- 트래킹 브랜치
	- 원격지의 브랜치로 작업하기
- ``` $ git checkout -b [로컬 브랜치] [원격 브랜치] ```
	```bash
	$ git fetch origin         [원격 저장소 내용 최신으로 가져오기]
	$ git branch -a
	* master
	  remotes/origin/HEAD -> origin/master
	  remotes/origin/master
	  remotes/origin/new
	  remotes/origin/testing
	$ git checkout -b testing origin/testing
	Branch testing set up to track remote branch testing from origin.
	Switched to a new branch 'testing'
	$ git branch -vv                [트래킹 브랜치 확인]
	  master  8f6ad29 [origin/master] Update jyheo
	* testing 16fbdb2 [origin/testing] hello
	```


## 로컬 브랜치의 변경 이력(커밋)을 원격지에 push
- ``` $ git push ```
	```bash
	$ git push -u origin testing
	Username for 'https://github.com': jyheo
	Password for 'https://jyheo@github.com':
	Counting objects: 3, done.
	Delta compression using up to 4 threads.
	Compressing objects: 100% (2/2), done.
	Writing objects: 100% (3/3), 256 bytes | 0 bytes/s, done.
	Total 3 (delta 1), reused 0 (delta 0)
	remote: Resolving deltas: 100% (1/1), completed with 1 local objects.
	To https://github.com/jyheo/test.git
	   daf25d2..16fbdb2  testing -> testing
	```
	- ``` $ git push -u origin testing ```
		+ -u 옵션을 주면 현재 브랜치(testing)가 origin/testing의 트래킹 브랜치가 됨
- ``` $ git pull ```
	- 트래킹 브랜치에 대해 자동으로 fetch/merge 수행


## Exercise
- 2인 이상이 조를 이루어 실습
- 조장이 Github에 저장소 새로 만들기(exercise2)
	- README.md, LICENSE, .gitignore 함께 생성
- 조원을 모두 collaborators로 등록
	- Settings > Collaborators 에서 등록 할 수 있음
- 각자 자신의 로컬 PC로 조장이 만든 exercise2 원격 저장소를 clone
- 각자 자신의 이름으로 브랜치(예를 들어 james) 생성/변경
- 자신의 이름으로 파일 생성, james.txt
- 원격 저장소로 james 브랜치를 push


## Exercise (계속)
- 원격 저장소의 최신 내용을 로컬로 가져옴(git fetch origin)
- 다른 사람이 push한 브랜치를 확인(git branch -a)
- 다른 사람이 push한 브랜치 하나(예를 들어 john)를 트래킹 브랜치로 생성(git checkout -b john origin/john)
- john.txt를 적당히 수정/commit하고 push
- 원격 저장소의 최신 내용을 가져오고 머지함(git pull 또는 git fetch origin, git merge origin)
- Master 브랜치로 변경
- Master 브랜치에 자신의 이름으로 만든 브랜치(james)를 merge
- Master 브랜치 push
	- 이때 순서에 따라 push가 거절될 수 있음. 그러면 다시 git fetch/merge하고 push
