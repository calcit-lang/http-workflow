## HTTP workflow for Calcit

based on [calcit-http](https://github.com/calcit-lang/calcit-http).

使用者注意：本项目现配对正式 Calcit **0.32.0**、HTTP **0.3.26** 和
Stir Template **0.0.22**。升级时同步安装完整精确依赖图；旧 CLI 不应读取本次
规范化后的类型标注。项目版本仍为 `0.0.13`，不代表发布了新的项目 tag。
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

本轮同步工具链与两个已发布依赖，并由官方 format 迁移类型表示；5 个定义的
语义 schema 保持不变。Caps strict、toolchain、全定义检查及完整 strict 已通过，
原 JSON/HTML/单次 POST smoke 在隔离回环进程中通过，包含 Unicode、false、0、null。
Stir 的普通 HTML 标签返回元素 Map，开放 HTML 值合同保留。
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

本轮不修改 handler、JSON/HTML/POST 路由或服务监听配置。保留原 CI 和类型门禁，
不增加检查脚本、强转或质量预算。测试副本仅覆盖监听地址及端口，验收后已停止。

从最近正式 tag `0.0.10` 升级时，还会包含 main 上已合入但未发版的迁移：
退役 `calcit-json` 改用 core `json-parse` / `json-pretty`，path/body 读取检查为
`Option<String>`，handler 的输入输出从整体 Dynamic 收窄为 `Map<Tag,Dynamic>`，
并使用当前 match / Option 方法。本次相对 main 只规范化类型表示，不把它
扩大为相对旧 tag 没有源码变化。两入口继续 native，旧接口恢复需成套回退依赖。

strict 仍记录请求/响应两个异构 Map 边界及缺失 POST body 对应的 nil；
不以假类型隐藏这些合同。本地验收不代表所有平台的运行支持。

### Workflow

https://github.com/calcit-lang/http-workflow

### License

MIT
