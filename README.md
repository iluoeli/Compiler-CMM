# Compiler lab

C-- Compiler


### 词法分析与语法分析

对使用C--语言书写的源代码进行词法分析和语法分析,并打印分析结果。

###### 依赖
- GNU Flex
- GNU Bison

###### 测试
`make test-lab1`


### 语义分析

对C--源代码进行语义分析和类型检查，并打印分析结果。

###### 测试
`make test-lab2`


### 中间代码生成

在词法分析、语法分析和语义分析程序的基础上， 将C--源代码翻译为中间代码。

######优化
构造有向无环图(DAG)优化。

###### 测试
- 执行以下命令生成中间代码(*.ir)：

    `make test-lab2`

- 使用[虚拟机小程序](./irsim)运行：

    `python ./irsim/irsim.pyc`

- 需要安装Qt运行环境:

    `sudo apt-get install python-qt4`


### 目标代码生成

在词法分析、语法分析、语义分析和中间代码生成程序的基础上，将C--源代码翻译为MIPS32指令序列（可以包含伪指令），并在SPIM Simulator上运行。

###### 测试
- 安装[SPIM Simulator](http://pages.cs.wisc.edu/~larus/spim.html)：

    `sudo apt-get install spim`

- 生成目标代码：

    `make test-lab4`

- 测试代码结果

    `spim -file xxx.s`
