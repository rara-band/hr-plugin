<div align="center">

# Agent HR

**好团队才有好产出。但团队放着不管就会悄悄走形 —— Agent HR 替你盯着 AI 智能体团队，帮它保持合适的形态。**

![status](https://img.shields.io/badge/status-early-DD8844) ![license](https://img.shields.io/badge/license-MIT-3F7D58) ![works on](https://img.shields.io/badge/works_on-Claude_%2B_Codex-5B6B7A)

![Agent HR](docs/overview.svg)

[English](README.md) · [한국어](README.ko.md) · [Español](README.es.md) · **中文**

</div>

---

### 为什么需要人事（HR）

公司归根结底是人。团队配错了 —— 人太多、太少，或者人做着不对的事 —— 那么无论每个人多优秀，公司都转不顺。所以每家公司都有**人事团队**：它不是亲自干活的岗位，而是盯着*团队的配置是否与工作相称*的岗位。

放着不管，团队就会悄悄走形：

- 人**只进不出**，很少放手。曾经需要的岗位就一直留着。
- **要做的事在变，团队却还是老样子。** 你需要的人和你拥有的人渐行渐远。
- 人越多，**光是让大家保持同步就越费时间。** 一味加人只会更慢，而不是更快。

而关键在于 —— **团队内部没人管这件事。** 每个人都忙着自己的活；没人停下来问“这个岗位还需要吗？面向我们要去的方向，这是对的团队吗？”而且答案没有固定公式 —— 该裁、该合并还是该招，要看具体情况。

> 所以**得有人退一步、从整体上盯着团队。** 这就是人事，也正是它重要的原因 —— 团队怎么配，决定了活到底干不干得成。

**智能体也一样。** 把一堆智能体凑成一个团队来干活，这个团队同样会走形。Agent HR 就是你智能体团队的人事。

### 那么，它做什么

它通盘审视你的智能体团队 —— 谁闲着、谁忙不过来、缺了什么、哪些岗位已经不合你要去的方向 —— 然后**告诉你该改什么。** 但*由你*来决定；它从不擅自改动任何东西。

每条建议都附带**它为什么这么看（参考了哪些记录），以及照做后能期待什么**。

### 它的承诺

- **只建议。** 它从不自行改动 —— 由你决定。
- **只凭真正看得到的东西说话。** 看不到的，它会说明。
- **不给自己的活打分。**
- **看具体情况，而非套公式。**
- **在 Claude 和 Codex 上表现一致。**

### 试用

```
/plugin marketplace add rara-band/hr-plugin
/plugin install hr-plugin@rara-band
/hr-review
```

`/hr-review` 会收集你团队的记录、通盘审视，并返回一份有依据的人事备忘。

### 延伸阅读

- 为何而建 · 需求 — [REQUIREMENTS.md](REQUIREMENTS.md)
- 单一事实来源 — [AGENTS.md](AGENTS.md)
- HR 所依据的知识 — [wiki/INDEX.md](wiki/INDEX.md)

### 状态

早期阶段。它知道什么、做什么都已确定；在真实团队上实跑还在进行中。

---

<div align="center">

**许可证** · MIT — [LICENSE](LICENSE)

</div>
