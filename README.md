# 2018年刑侦科推理试题

网上看到这么个题目 ([链接](https://zhuanlan.zhihu.com/p/36489801))，是 "2014年杭州学军中学推理社招新考题"。也有传是“2018年刑侦科推理试题”，实为谣传。

出题人是个小伙子，参考报道：[“刑侦科目推理题”走红 出题者为中学生
](http://society.people.com.cn/n1/2018/0308/c1008-29854595.html)

这个题目还挺有意思的，所以我也尝试了一下。 网上已经有很多解法了，这里是一个 prolog 的解法。 应该还算简洁易懂 :D

## 题目
1. 这道题的答案是：  `A.A` `B.B` `C.C` `D.D`
2. 第5题的答案是：   `A.C` `B.D` `C.A` `D.B`
3. 以下选项中哪一题的答案与其他三项不同：
`A.第3题` `B.第6题` `C.第2题` `D.第4题`
4. 以下选项中哪两题的答案相同：
`A.第1,5题` `B.第2,7题` `C.第1,9题` `D.第6,10题`
5. 以下选项中哪一题的答案与本题相同：
`A.第8题` `B.第4题` `C.第9题` `D.第7题`
6. 以下选项中哪两题的答案与第8题相同：
`A.第2,4题` `B.第1,6题` `C.第3,10题` `D.第5,9题`
7. 在此十道题中，被选中次数最少的选项字母为：
`A.C` `B.B` `C.A` `D.D`
8. 以下选项中哪一题的答案与第1题的答案在字母中不相邻：
`A.第7题` `B.第5题` `C.第2题` `D.第10题`
9. 已知“第1题与第6题的答案相同”与“第X题与第5题的答案相同”的真假性相反，那么X为：
`A.第6题` `B.第10题` `C.第2题` `D.第9题`
10. 在此10道题中，ABCD四个字母出现次数最多与最少者的差为：
`A.3` `B.2` `C.4` `D.1`


## 运行
* 运行环境： `swi-prolog`
* 命令：
```prolog
?- [puzzle].
?- solve(Qs), print(Qs).
```