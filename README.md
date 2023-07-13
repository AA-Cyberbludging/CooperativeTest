# CooperativeTest
感受一下怎么使用 git 多人协作

*这个流程很可能还有问题，大家可以先试试*
![](https://s2.loli.net/2023/07/13/ju8KWYXmpkATEw4.gif)

1. 克隆仓库到本地  
   `git clone https://github.com/AA-Cyberbludging/CooperativeTest.git`

2. 创建一个分支  
   `git checkout -b <branch_name>`
   > 自己负责的修改要另立一个分支，不能直接推到主分支上  
   > 命名可以如 `feat-login`, `feat-show-xxx` 等  
   > 记得要在 `dev` 分支上创建，即先 `git checkout dev`  
   > 切分支之前保证自己工作区的修改已经 commit 了，不然可能会丢 *(?)*
  
3. 添加/修改一些文件之后：

   `git add .`  
   `git commit -m <message>`
   > 如果没有要求 commit 信息规范，那你们就随便写写这个 commit 干了什么。注意要打引号  
   > 例如 `git commit -m "今天又摸鱼了"`

4. 合并修改到主分支
   在 Github 上提交一个 **Pull request**, 把修改推到 `dev` 分支上，我会审的👁
