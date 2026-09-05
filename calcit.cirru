
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |calcit-http/ |calcit-json/ |stir-template/ |lilac/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.main/demo-server!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |calcit-http/ |calcit-json/ |stir-template/ |lilac/
      :type-slots $ {}
  :files $ {}
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'demo-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn demo-server! () $ serve-http!
              {} $ :port 4000
              fn (req) (on-request req)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ demo-server!
          :examples $ []
          :schema $ :: 'Dynamic
        'mid-call $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn mid-call () $ println "|Calling internal function"
          :examples $ []
          :schema $ :: 'Dynamic
        'on-request $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-request (req)
              println "|Handling request:" $ get req :body
              ; mid-call
              case-default
                option:unwrap-or (get req :path) |
                {} (:status :ok) (:code 200)
                  :headers $ {} (:content-type |text/json)
                  :body $ format-cirru-edn req
                |/html $ {} (:status :ok) (:code 200)
                  :headers $ {} (:content-type |text/html)
                  :body $ make-page
                    {} (:title "|Calcit HTTP Demo")
                      :styles $ [] |https://cdn.tiye.me/favored-fonts/main-fonts.css
                      :content $ div
                        {} $ :style
                          {} $ :font-family ui/font-normal
                        h1
                          {} $ :style
                            {} $ :color :red
                          , "|A demo page"
                |/json $ {} (:status :ok) (:code 200)
                  :headers $ {} (:content-type |application/json)
                  :body $ json/stringify
                    {} (:message "|a piece of json") (:status false)
                    , true
                |/post-json $ let
                    body $ get req :body
                    data $ if (option:some? body)
                      json/parse $ option:unwrap body
                      , nil
                  println "|POST data:" data
                  {} (:status :ok) (:code 200)
                    :headers $ {} (:content-type |application/json)
                    :body $ json/stringify
                      {} (:message "|another piece of json") (:status false) (:sent-data data)
                      , true
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println |Reload
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            http.core :refer $ serve-http!
            stir-template.alias :refer $ make-page div h1
            stir-template.ui :as ui
            json.core :as json
