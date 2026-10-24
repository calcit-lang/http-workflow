## HTTP workflow for Calcit

based on [calcit-http](https://github.com/calcit-lang/calcit-http).

使用者注意：候选 `0.0.13` 配对正式 Calcit **0.30.1**、HTTP **0.3.24** 和
Stir Template **0.0.20**。同步安装完整精确依赖图后重启原生进程，保留 Caps strict；
候选版本号不代表已经发布。此项目仅为 native HTTP 开发示例，不部署任何服务。

示例默认监听配置保持不变，不能当作已认证的生产接口；本地试用应显式绑定回环，
不要提交真实敏感内容。当前原日志会输出请求 body 和解析后的 POST 内容，
日志收敛另见 [issue #24](https://github.com/calcit-lang/http-workflow/issues/24)。

### Usages

```bash
caps --strict --ci
caps verify --toolchain
calcit calcit.cirru --entry server
```

项目候选使用正式 Calcit 0.30.1、HTTP 0.3.24 和 Stir Template 0.0.20。
本轮仅升级已发布的 Stir Template：包含九处旧调用迁移、真实回调合同及 StructDef
元数据修正；模板公开调用参数/返回和 HTML escaping 保留。本项目 Snapshot、HTTP
FFI/ABI、路由、原 JSON/HTML/POST smoke 不变，不部署或重启任何服务。
Stir 的普通 HTML 标签返回明确的元素 Map，已有 JSON、HTML 和 POST smoke 保留。
Read `calcit docs agents --contract`
before modifying the Snapshot, and use `calcit tree` / `calcit edit` for changes.
Both entries use the native target and the same HTTP request handler.

JSON parsing and pretty-printing use Calcit built-ins; the archived native
`calcit-json` module is no longer needed. Request and response contracts are
`Map<Tag,Dynamic>` because the HTTP wire maps are heterogeneous. Path and body
values are decoded as `Option<String>` before use. Arbitrary parsed JSON is
echoed unchanged, so its payload intentionally remains Dynamic.

CI retains the existing localhost JSON, HTML, and POST smoke test. This native
server example has no frontend artifact and needs no COS upload configuration.

本轮不修改 Snapshot、原 handler、JSON/HTML/POST 路由或服务监听配置；
同步正式依赖图，并以全定义检查替代重复的普通入口/逐 namespace 检查，保留 server
入口和原三条 HTTP smoke。完整 strict 明确要求 passed 与空 diagnostics，不增加脚本。
原 POST smoke 仍只发送一次请求，用同一断言核对 hello、Unicode、false、0 和 null
完整往返；这覆盖旧 JSON 模块转为 core JSON 后的实际数据合同，不新增测试组。

从最近正式 tag `0.0.10` 升级时，还会包含 main 上已合入但未发版的迁移：
退役 `calcit-json` 改用 core `json-parse` / `json-pretty`，path/body 读取检查为
`Option<String>`，handler 的输入输出从整体 Dynamic 收窄为 `Map<Tag,Dynamic>`，
并使用当前 match / Option 方法。仅本 PR 相对 main 的 Snapshot 未变，不把它
扩大为相对旧 tag 没有源码变化。两入口继续 native，旧接口恢复需成套回退依赖。

以下为历史基线，不冒充本候选正式配对已通过：完整 strict workflow 在
0.30.0 和 0.30.1-alpha.5 下通过，不增加强转、兼容层或质量预算。
本地真实请求对照在忽略的完整 Snapshot 副本中使用 loopback 临时端口；保留原 CI
三条 smoke，不新增永久测试脚本或编译器规则。JSON、HTML 和 POST 在两版 CLI 下
通过，POST 同时确认 Unicode、false、0 和 null 原样往返；自建服务验收后终止。
此前本机验证使用匹配的 alpha.5；本候选正式 0.30.1 的安装、strict 和真实请求
验收以本次 Linux CI 为准，不冒充已经验证所有平台。
strict 仍记录请求/响应两个异构 Map 边界及缺失 POST body 对应的 nil；不以假类型隐藏这些合同。

### Workflow

https://github.com/calcit-lang/http-workflow

### License

MIT
