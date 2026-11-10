## HTTP workflow for Calcit

based on [calcit-http](https://github.com/calcit-lang/calcit-http).

使用者注意：候选 `0.0.14` 配对 Calcit **0.40.0**、HTTP **0.4.0** 和
Stir Template **0.2.1**。更新依赖后，请为目标架构重新构建原生动态库。
HTTP 的配置参数现在用 `Option :some` 包装，示例沿用原端口和路由。
此项目仅为 native HTTP 开发示例，不部署或重启任何服务。

示例默认监听配置保持不变，不能当作已认证的生产接口；本地试用应显式绑定回环，
不要提交真实敏感内容。当前原日志会输出请求 body 和解析后的 POST 内容，
日志收敛另见 [issue #24](https://github.com/calcit-lang/http-workflow/issues/24)。

### Usages

```bash
caps --strict --ci
caps verify --toolchain
calcit calcit.cirru --entry server
```

`on-request` 返回 `Map<Tag,ResponseValue>`。
`ResponseValue = Tag | Number | String | Map<Tag,String>` 覆盖当前状态、状态码、正文和 headers；
它约束值域，不表达按键区分的完整响应结构。四处重复的成功响应统一使用 `ok-response`，
该构造函数固定原状态与 200 状态码，并要求 Content-Type 和正文均为 String。
不把 HTTP wire Map 改为 Struct，不改变路由或监听配置。未来添加其他响应值时须先明确类型合同。
请求和解析后的任意 JSON 仍保留真实开放边界，JSON false、0、null 等值不会被响应 union 限制。
Caps strict、toolchain、全定义检查及完整 strict 已通过；隔离负例确认 Bool 正文/Bool header 被拒绝，
构造函数也拒绝 Number 正文/Content-Type。每个负例单独检查，不将混合诊断中的 passed 行当作独立证明。
原 JSON/HTML/POST smoke 在隔离回环进程中通过，并验证了 Unicode、false、0、null、数组和默认路由。
Stir 的普通 HTML 标签返回元素 Map，开放 HTML 值合同保留。
Read `calcit docs agents --contract`
before modifying the Snapshot, and use `calcit tree` / `calcit edit` for changes.
Both entries use the native target and the same HTTP request handler.

JSON parsing and pretty-printing use Calcit built-ins; the archived native
`calcit-json` module is no longer needed. Requests retain their heterogeneous
`Map<Tag,Dynamic>` boundary. The handler's self-owned response values use the
closed `ResponseValue` union while keeping the ordinary Map wire format.
Path and body values are decoded as `Option<String>` before use. Arbitrary parsed
JSON is echoed unchanged inside the serialized response body, so that payload
intentionally remains Dynamic.

CI retains the existing localhost JSON, HTML, and POST smoke test. This native
server example has no frontend artifact and needs no COS upload configuration.

构造函数展开后的 handler AST 与原版完全一致；JSON/HTML/POST 路由和服务监听配置保持。保留原 CI 和类型门禁，
PR 另用现有 `program-diff --fail-on-widening` 拒绝返回槽退回 Dynamic 等 schema 放宽；
不增加检查脚本、强转或质量预算。测试副本仅覆盖监听地址及端口，验收后已停止。

历史上从正式 tag `0.0.10` 升级到 `0.0.13` 时，包含以下迁移：
退役 `calcit-json` 改用 core `json-parse` / `json-pretty`，path/body 读取检查为
`Option<String>`，handler 的输入输出从整体 Dynamic 收窄为 `Map<Tag,Dynamic>`，
并使用当前 match / Option 方法。两入口继续 native，回退时应成套还原工具链和依赖。

strict 仍如实记录原始请求、解析后的开放 JSON 和缺失 POST body 对应的 nil；
响应输出的 Dynamic 由实际可证明的 union 替代，不以强转隐藏边界。本地验收不代表所有平台的运行支持。

### Workflow

https://github.com/calcit-lang/http-workflow

### License

MIT
