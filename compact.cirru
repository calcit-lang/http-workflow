
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.6)
    :modules $ [] |calcit-http/ |calcit-json/ |stir-template/ |lilac/
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
                :body $ make-page
                  stir-html $ div
                    {} $ :style
                      {} $ :font-family ui/font-normal
                    h1
                      {} $ :style
                        {} $ :color :red
                      , "\"A demo page"
                  {}
                    :title $ {} (:innerHTML "\"Calcit HTTP Demo")
                    :styles $ [] "\"https://cdn.tiye.me/favored-fonts/main-fonts.css"
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
          stir-template.core :refer $ stir-html
          stir-template.alias :refer $ div h1
          stir-template.shell-page :refer $ make-page
          stir-template.ui :as ui
          json.core :as json
