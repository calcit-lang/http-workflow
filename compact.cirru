
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.6)
    :modules $ [] |calcit-http/ |calcit-json/
  :entries $ {}
    :server $ {} (:init-fn |http.test/demo-server!) (:reload-fn |http.test/reload!)
      :modules $ []
  :files $ {}
    |app.main $ {}
      :defs $ {}
        |demo-server! $ quote
          defn demo-server! () $ serve-http!
            {} $ :port 4000
            fn (req) (on-request req)
        |main! $ quote
          defn main! () $ demo-server!
        |mid-call $ quote
          defn mid-call () $ println "\"Calling internal function"
        |on-request $ quote
          defn on-request (req) (; println "\"Handling request:" req)
            println $ :url req
            ; mid-call
            case-default (:path req)
              {} (:status :ok) (:code 200)
                :headers $ {} (:content-type "\"text/json")
                :body $ format-cirru-edn req
              "\"/html" $ {} (:status :ok) (:code 200)
                :headers $ {} (:content-type "\"text/html")
                :body "\"<h1>This is demo html</h1>"
              "\"/json" $ {} (:status :ok) (:code 200)
                :headers $ {} (:content-type "\"application/json")
                :body $ json/stringify
                  {} $ :message "\"a piece of json"
                  , true
        |reload! $ quote
          defn reload! () $ println "\"Reload"
      :ns $ quote
        ns app.main $ :require
          http.core :refer $ serve-http!
          json.core :as json
