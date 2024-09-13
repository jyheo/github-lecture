---
marp: true
theme: my-theme
paginate: true
headingDivider: 2
header: git/github - https://github.com/jyheo/github-lecture
footer: 
backgroundColor: #fff
---

# Git 기초
<!-- _class: lead -->
### 허준영(jyheo@hansung.ac.kr)


## Git
- 여러 사람이 동일한 문서(소스 코드)에 대해 동시에 작업을 해야할 때
- 상대방의 작업을 방해하지 않으면서
- 변경 이력을 남기면서
- 효율적으로 작업할 수 있도록 도와줌
- Distributed Version Control System(분산 버전 제어 시스템)
	- 문서(소스 코드) 버전 관리(변경 이력 관리)
	- 분산형 시스템: 개인 저장소와 공유 저장소


## Git
- 작업 공간 Working directory
	- 편집할 파일(소스 코드)이 저장되어 있는 디렉터리
- 스테이지 Staging Area
	- 저장소(Repository)로 변경 내역을 저장하기 위한 파일들의 목록
- 저장소 Repository
	- 로컬 저장소: 보통 작업 공간에 .git 라는 이름의 디렉터리로 존재, 변경 내역이 저장되는 곳
	- 원격 저장소: 여러 사용자가 공유하는 저장소
		+ Github, Bitbucket


## Git
- Git에서 보는 파일의 상태로
	- Untracked File
	- Tracked File
		+ Modified, Staged, Committed  
	![](images/git-3state.png)
		+ 출처: https://git-scm.com/book/en/v2/Getting-Started-Git-Basics

<!--
- Untracked File: Git에서 관리되지 않는 파일, 새로 만들어져서 아직 Tracked를 하지 않았거나 일부러 제외한 파일들
- Tracked File: Git에서 관리되는 파일
- Committed: 변경 사항이 모두 저장소(Repository)에 저장된 상태, Unmodified라고도 함
- Modified: Committed 이후에 파일이 변경된 상태
- Staged: Modified 중에 Commit할 파일들을 Staging Area에 올려둔 상태
  -->

## Git 설치
- 다운로드: https://git-scm.com/download
- 리눅스의 경우 배포판에 따라
	- 데비안 계열: $ sudo apt-get install git-all
	- Fedora 배포판: $ sudo yum install git-all
- GUI: git-gui, SourceTree, Git Extensions
![](images/git-gui.png) ![](images/sourcetree.png) ![](images/gitextensions.png)


## Git 설정
- 사용자 설정
	- ``` > git config --global user.name "John Doe" ```
	- ``` > git config --global user.email johndoe@example.com ```
	- ```--global``` 을 빼면 저장소마다 별도로 설정할 수 있음
	- **공용 실습 컴퓨터에서 조심!**
- 편집기 설정
	- ``` > git config --global core.editor notepad ```
	- 윈도우 notepad나 git에 포함된 nano 에디터로 설정하여 쓰면 됨
- ``` > git config --list ```
	```
	core.editor=notepad
	user.email=jyheo0@gmail.com
	user.name=Junyoung Heo
	core.autocrlf=input
	```

<!--
- 나중에 원격 저장소 접근을 위해 사용하는 ID/PWD와 git 저장소에서 사용되는 user.name, user.email과 혼동하지 않도록 조심!
- git에서 종정 편집기를 자동으로 실행시키는데, 익숙한 에디터로 지정해두고 쓰면 좋다.
-->

## Git help
- ``` > git help ```
- ``` > git help config ```
	![](images/git-help-config.png)


## Git 저장소 만들기
- 로컬 디렉터리에 저장소 새로 만들기(``` git init ``` )
	```
	> mkdir my_proj
	> cd my_proj/
	> ls
	> git init
	Initialized empty Git repository in C:/Users/jyheo/my_proj/.git/
	> ls -Hidden
	    Directory: C:\Users\jyheo\my_proj
	Mode                 LastWriteTime         Length Name
	----                 -------------         ------ ----
	d--h-        2024-09-13 오후 10:30                .git
	```

<!--
- 로컬 저장소를 새로 만들거나,
- 원격 저장소를 로컬로 복제하기
-->

## 변경 이력 저장하기
- 작업 디렉터리 내의 파일 Untracked/Tracked
- Tracked 파일: Unmodified(Committed), Modified, Staged
- ```> git status```  
![](images/git-status.png)
	- 출처: https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository


## 변경 이력 저장하기(새 파일)
- 새 파일 생성, tracked-staged로 변경
	```
	> echo "newfile" > newfile
	> git status
	On branch master	
	No commits yet
	Untracked files:
	(use "git add <file>..." to include in what will be committed)
		newfile
	nothing added to commit but untracked files present (use "git add" to track)
	```
	```
	> git add newfile
	> git status
	On branch master
	No commits yet
	Changes to be committed:
	(use "git rm --cached <file>..." to unstage)
		new file:   newfile
	```


## 변경 이력 저장하기(새 파일)
- tracked-staged 파일을 committed로 변경
	```
	> git commit -m "initial commit"
	[master (root-commit) 041682a] initial commit
		1 file changed, 1 insertion(+)
	create mode 100644 newfile
	> git status
	On branch master
	nothing to commit, working tree clean
	```


## 변경 이력 저장하기(기존 파일)
- tracked인 기존 파일 수정, staged로 변경,
	```
	> notepad newfile
	> git status
	On branch master
	Changes not staged for commit:
	(use "git add <file>..." to update what will be committed)
	(use "git restore <file>..." to discard changes in working directory)
		modified:   newfile
	no changes added to commit (use "git add" and/or "git commit -a")
	```
	```
	> git add newfile
	> git status
	On branch master
	Changes to be committed:
	(use "git restore --staged <file>..." to unstage)
		modified:   newfile
	```


## 변경 이력 저장하기(기존 파일)
- staged에서 committed로 변경
	- 변경된 파일과 커맨트가 로컬 저장소에 저장됨
- git commit 또는 git commit -m “커맨트”
	```
	> git commit -m "Add some string"
	[master 4e50a68] Add some string
		1 file changed, 1 insertion(+)
	> git status
	On branch master
	nothing to commit, working tree clean
	```


## 변경 이력 저장하기(2개이상 파일)
- stage에 2개 이상의 파일 올리고 커밋하기
	```
	> echo "another file" > newfile2
	> notepad newfile      
	> git status
	On branch master
	Changes not staged for commit:
	(use "git add <file>..." to update what will be committed)
	(use "git restore <file>..." to discard changes in working directory)
		modified:   newfile
	Untracked files:
	(use "git add <file>..." to include in what will be committed)
		newfile2
	no changes added to commit (use "git add" and/or "git commit -a")
	> git add newfile
	> git add newfile2
	> git commit -m "Add newfile2"
	[master 503f0b7] Add newfile2
	2 files changed, 2 insertions(+)
	create mode 100644 newfile2
	```

## 변경 이력 저장하기(파일 일부만 스태이징)
- stage에 파일 변경 부분 확인하면서 일부분만 올리기
	- ``` > git add -p ```
	```
	> git add -p
	diff --git a/git-basic.md b/git-basic.md
	index 5f742ec..839532a 100644
	--- a/git-basic.md
	+++ b/git-basic.md
	@@ -55,8 +55,8 @@ backgroundColor: #fff
	-- GUI: git-gui, SourceTree
	-![](images/git-gui.png) ![](images/sourcetree.png)
	+- GUI: git-gui, SourceTree, Git Extensions
	+![](images/git-gui.png) ![](images/sourcetree.png) ![](images/gitextensions.png)
	
	(1/1) Stage this hunk [y,n,q,a,d,e,?]? ?
	```
	- y: 이 hunk를 추가, n: 추가하지 않음, q: 종료, ?: 도움말

## 변경 이력 저장하기(파일 일부만 스태이징)
- GUI를 쓰면 좀 더 편리하게 할 수 있음(예: Git Extensions)
	![w:800](images/stage-by-line.png)


## 변경 이력 저장하기
- 파일 삭제
	- ``` > git rm [파일 이름] ```
		+ 파일을 삭제하고, 삭제한 파일을 staged
	- ``` > git commit ```
		+ 삭제한 파일 committed
- 파일 이름 변경
	- ``` > git mv [파일 이름] [새 파일 이름] ```
	- ``` > git commit ```


## 변경 이력 저장하기
- ``` > git diff ```
	- Modified 파일의 변경된 부분을 보여줌
- ``` > git diff –staged ```
	- Staged 파일의 변경된 부분을 보여줌
- ``` .gitignore ```
	- git이 자동으로 tracked하지 않을 파일들을 지정
	```
	# no .a files
	*.a
	# but do track lib.a, even though you're ignoring .a files above
	!lib.a
	# only ignore the TODO file in the current directory, not subdir/TODO
	/TODO
	# ignore all files in the build/ directory
	build/
	# ignore doc/notes.txt, but not doc/server/arch.txt
	doc/*.txt
	# ignore all .pdf files in the doc/ directory
	doc/**/*.pdf
	```


## Git 히스토리
- ``` > git log ```
- GUI 버전 권장!  
![](images/history.png)


## 실수 바로잡기
- 마지막 Commit을 취소하기
	- ``` > git reset HEAD^ ```
		+ HEAD commit을 단순히 제거하는 방법으로 취소
	- ``` > git revert HEAD ```
		+ HEAD commit을 취소하는 commit을 추가로 만드는 것
- 같이 Commit해야 할 파일을 실수로 빼고 commit 했을 때:
	- ``` > git commit --amend ```
	```
	> git commit -m "Add newfile"
	> git add forgotten
	> git commit --amend
	[master 26f6884] Add newfile
		Date: Tue Jan 3 06:09:27 2017 +0900
		3 files changed, 2 insertions(+)
		create mode 100644 forgotten
		create mode 100644 newfile
	```


## 실수 바로잡기
- Staged를 되돌리기
	- ``` > git restore --staged [파일 이름] ```
	```
	> git add newfile2
	> git status
	On branch master
	Changes to be committed:
	(use "git restore --staged <file>..." to unstage)
		modified:   newfile2
	> git restore --staged newfile2
	> git status
	On branch master
	Changes not staged for commit:
	(use "git add <file>..." to update what will be committed)
	(use "git restore <file>..." to discard changes in working directory)
		modified:   newfile2
	no changes added to commit (use "git add" and/or "git commit -a")
	```


## 실수 바로잡기
- Modified를 마지막 Commit 버전으로 되돌리기
	- ``` > git restore [파일 이름] ```
	```
	> git status
	OOn branch master
	Changes not staged for commit:
	(use "git add <file>..." to update what will be committed)
	(use "git restore <file>..." to discard changes in working directory)
		modified:   newfile2
	no changes added to commit (use "git add" and/or "git commit -a")
	> git restore newfile2
	> git status
	On branch master
	nothing to commit, working tree clean
	```



## Tagging
- 태깅 – 태그 달기
	- Annotated Tag: 태거 이름, 이메일, 날짜, 커맨트 등을 함께 저장, -a 옵션 사용
	- Lightweight Tag: 단순 태깅
	- ``` > git tag [-a] [태그 이름] [기타 옵션] ```
	```
	> git tag
	> git tag -a v1.0 -m "my version 1.0"
	> git tag
	v1.0
	> git tag v1.0-lw
	> git tag
	v1.0
	v1.0-lw
	```


## Write a Good Commit Message
- 협업을 위해 중요함
- 정보를 전달할 수 있도록, 간결하게
- 써야할 내용이 정리가 잘 안된다면, 여러 건의 변경이나 버그 픽스가 섞여 있는 것임
	- 이런 경우에 git add -p나 git add -e 로 commit할 내용을 줄여서 staged로 할 수 있음


## Write a Good Commit Message

```txt
Capitalized, short (50 chars or less) summary

More detailed explanatory text, if necessary.  Wrap it to about 72
characters or so. In some contexts, the first line is treated as the
subject of an email and the rest of the text as the body. The blank
line separating the summary from the body is critical (unless you omit
the body entirely); tools like rebase can get confused if you run the
two together.

Write your commit message in the imperative: "Fix bug" and not "Fixed bug"
 or "Fixes bug." This convention matches up with commit messages generated
by commands like git merge and git revert.

Further paragraphs come after blank lines.
 - Bullet points are okay, too
 - Typically a hyphen or asterisk is used for the bullet, followed by a single space,    with blank 
   lines in between, but conventions vary here

Issue: [#365](https://link/to/issue/365)
```
- 출처: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html


## Write a Good Commit Message

- 제목과 본문을 한 줄 띄워 분리하기
- 제목은 영문 기준 50자 이내로
- 제목 첫글자를 대문자로
- 제목 끝에 . 금지
- 제목은 명령조로
- 본문은 영문 기준 72자마다 줄 바꾸기
- 본문은 어떻게보다 무엇을, 왜에 맞춰 작성하기


## 실습
- 실습
	- Developer PowerShell for VS를 실행 (윈도우, Visual Studio 설치 가정)
	- 로컬 저장소를 생성한다.(git init)
	- .gitignore 파일을 만들고 *.obj와 *.exe을 넣는다.
	- .gitignore 파일을 staged/committed 한다.
	- main.c 파일을 만들고 staged/committed 한다. (이후 main.c를 수정할 때마다 cl로 컴파일 한다.)
	- main.c 파일에 main() 함수를 추가하고 staged/committed 한다.
	- 태깅을 해본다. 태그 이름은 v1.0 으로 하자.
	- main.c 파일을 수정하고 staged/commit 한다.
	- main.c 파일을 임의로 수정한다.
	- git diff 를 해본다.
	- main.c 파일을 마지막 committed 상태로 되돌린다.
	- 히스토리를 살펴본다.

