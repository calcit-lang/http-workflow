
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.6)
    :modules $ [] |calcit-http/ |calcit-json/ |stir-template/ |lilac/
  :entries $ {}
    :server $ {} (:init-fn |http.test/demo-server!) (:reload-fn |http.test/reload!)
      :modules $ []
  :files $ {}
    |app.main $ %{} :FileEntry
      :defs $ {}
        |demo-server! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn demo-server! () $ serve-http!
              {} $ :port 4000
              fn (req) (on-request req)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ demo-server!
        |mid-call $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn mid-call () $ println "\"Calling internal function"
        |on-request $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-request (req)
              println "\"Handling request:" $ :body req
              println $ :url req
              ; mid-call
              case-default (:path req)
                {} (:status :ok) (:code 200)
                  :headers $ {} (:content-type "\"text/json")
                  :body $ format-cirru-edn req
                "\"/html" $ {} (:status :ok) (:code 200)
                  :headers $ {} (:content-type "\"text/html")
                  :body $ make-page
                    {}
                      :title $ {} (:innerHTML "\"Calcit HTTP Demo")
                      :styles $ [] "\"https://cdn.tiye.me/favored-fonts/main-fonts.css"
                      :content $ div
                        {} $ :style
                          {} $ :font-family ui/font-normal
                        h1
                          {} $ :style
                            {} $ :color :red
                          , "\"A demo page"
                "\"/json" $ {} (:status :ok) (:code 200)
                  :headers $ {} (:content-type "\"application/json")
                  :body $ json/stringify
                    {} (:message "\"a piece of json") (:status false)
                    , true
                "\"/post-json" $ let
                    data $ if
                      some? $ :body req
                      json/parse $ :body req
                      , nil
                  println "\"POST data:" data
                  {} (:status :ok) (:code 200)
                    :headers $ {} (:content-type "\"application/json")
                    :body $ json/stringify
                      {} (:message "\"another piece of json") (:status false) (:sent-data data)
                      , true
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println "\"Reload"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            http.core :refer $ serve-http!
            stir-template.alias :refer $ make-page div h1
            stir-template.ui :as ui
            json.core :as json
