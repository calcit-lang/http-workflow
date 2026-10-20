## HTTP workflow for Calcit

based on [calcit-http](https://github.com/calcit-lang/calcit-http).

### Usages

```bash
caps --strict --ci
caps verify --toolchain
calcit calcit.cirru --entry server
```

项目使用 Calcit 0.30.1-alpha.5、正式 Calcit HTTP 0.3.23 和 Stir Template 0.0.18。
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

本轮不修改 Snapshot、原 handler、JSON/HTML/POST 路由、服务监听配置或 CI；
仅更新 CLI 声明及文档，两个模块保留正式版本。完整 strict workflow 在
0.30.0 和 0.30.1-alpha.5 下通过，不增加强转、兼容层或质量预算。
本地真实请求对照在忽略的完整 Snapshot 副本中使用 loopback 临时端口；保留原 CI
三条 smoke，不新增永久测试脚本或编译器规则。JSON、HTML 和 POST 在两版 CLI 下
通过，POST 同时确认 Unicode、false、0 和 null 原样往返；自建服务验收后终止。
截至 2026-10-21，0.30.1 正式 release 已存在，但尚无 macOS 资产；本轮采用实际可验证的
0.30.1-alpha.5，不宣称完成正式 0.30.1 的跨平台验收。
strict 仍记录请求/响应两个异构 Map 边界及缺失 POST body 对应的 nil；不以假类型隐藏这些合同。

### Workflow

https://github.com/calcit-lang/http-workflow

### License

MIT
