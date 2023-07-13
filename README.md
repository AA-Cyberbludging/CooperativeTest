# CooperativeTest
### 如果后面规定了工作流程那这个就没用了，不过还是可以参考一下😔
### 下面都是命令行叙述，IDEA 会有对应的功能的，不是一定要用命令行操作
### 推不上来建议设一下代理
感受一下怎么使用 git 多人协作

*这个流程很可能还有问题，大家可以先试试*
![](https://s2.loli.net/2023/07/13/ju8KWYXmpkATEw4.gif)

1. 克隆仓库到本地  
   `git clone -b dev https://github.com/AA-Cyberbludging/CooperativeTest.git`
   > 这里只克隆了 dev 分支

3. 创建一个分支  
   `git checkout -b <branch_name>`
   > 自己负责的修改要另立一个分支，不能直接推到主分支上  
   > 命名可以如 `feat-login`, `feat-show-xxx` 等  
   > 记得要在 `dev` 分支上创建，即先 `git checkout dev`  
   > **在创建前先同步最新的 `dev` 分支: `git pull origin dev`**  
   > 切分支之前保证自己工作区的修改已经 commit 了，不然可能会丢 *(?)*
  
4. 添加/修改一些文件之后：

   `git add .`  
   `git commit -m <message>`
   > 如果没有要求 commit 信息规范，那你们就随便写写这个 commit 干了什么。注意要打引号  
   > 例如 `git commit -m "今天又摸鱼了"`

5. 合并修改到主分支
   把自己的分支推到 Github. 如果这个分支在远端还不存在，那么
   `git push --set-upstream origin <branch_name>`  
   否则就直接 `git push` 就好

6. 提交 Pull request
   让我看看你写了些什么👀，其实就是我审一下代码
   ![](https://s2.loli.net/2023/07/13/hKS6mU4BYGpfJOu.png)  
   ![](https://s2.loli.net/2023/07/13/E8o4D7VBrGujaCA.png)  
   ![](https://s2.loli.net/2023/07/13/LD8mSMHatGCRK1b.png)
   如果后续在这个分支上没有修改了那就把这个分支删掉
   ![](https://s2.loli.net/2023/07/13/F7YAviQpWoUmalJ.png)
