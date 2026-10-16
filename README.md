## HTTP workflow for Calcit

based on [calcit-http](https://github.com/calcit-lang/calcit-http).

### Usages

```bash
caps --strict --ci
caps verify --toolchain
calcit calcit.cirru --entry server
```

项目使用正式 Calcit 0.30.0、Calcit HTTP 0.3.23 和 Stir Template 0.0.18。
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

本轮不修改 Snapshot、原 handler、JSON/HTML/POST 路由或服务监听配置；只更新工具链、
已正式发布的 HTTP 依赖和 CI。完整 strict workflow 在正式 0.30.0 下通过；
0.29.3 基线的 core 返回证明问题不靠项目强转或兼容代码绕过。
本地真实请求对照在忽略的完整 Snapshot 副本中使用 loopback 临时端口；保留原 CI
三条 smoke，不新增永久测试脚本或编译器规则。0.30.1 尚无正式版，不引入 alpha/hash。

### Workflow

https://github.com/calcit-lang/http-workflow

### License

MIT
