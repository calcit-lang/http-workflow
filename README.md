## HTTP workflow for Calcit

based on [calcit-http](https://github.com/calcit-lang/calcit-http).

### Usages

```bash
caps --strict --ci
caps verify --toolchain
calcit calcit.cirru --entry server
```

项目使用正式 Calcit 0.29.1、Calcit HTTP 0.3.22 和 Stir Template 0.0.17。
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

### Workflow

https://github.com/calcit-lang/http-workflow

### License

MIT
