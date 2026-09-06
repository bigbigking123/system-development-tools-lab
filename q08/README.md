# q08 Word Frequency Optimization

## 内容

使用 Python 实现单词统计程序，并比较不同数据结构对程序运行效率的影响。


## 实现

1. 使用 words.txt 作为测试数据。

2. 编写 wordfreq.py：
- 使用 list 保存不重复单词；
- 分析程序运行效率。


3. 使用 cProfile 对程序进行性能分析，发现 list 查找操作影响程序效率。


4. 编写优化版本 wordfreq_fast.py：
- 使用 set 替代 list；
- 提高单词查找效率。


## 测试结果

优化前平均运行时间：

0.16217 s


优化后平均运行时间：

0.03973 s


加速比：

约 4.08 倍


## 运行方法

运行原程序：

python wordfreq.py


运行优化程序：

python wordfreq_fast.py

## Performance Comparison

### Original wordfreq.py

Run 1:
161.9639 ms

Run 2:
162.3845 ms

Median:
162.1742 ms


### Optimized wordfreq_fast.py

Run 1:
42.8417 ms

Run 2:
36.6161 ms

Median:
39.7289 ms


### Speedup

162.1742 / 39.7289 = 4.08x