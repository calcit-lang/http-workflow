
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |calcit-http/ |stir-template/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.main/demo-server!) (:mode :native) (:reload-fn 'app.main/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |calcit-http/ |stir-template/
      :type-slots $ {}
  :files $ {} $ 'app.main
    %{} 'FileEntry
      :defs $ {}
        'ResponseValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResponseValue Tag Number String (Map Tag String)
          :examples $ []
          :schema $ quote UnionDef
        'demo-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn demo-server! ()
            serve-http!
              {} $ :port 4000
              fn (req) (on-request req)
          :examples $ []
          :schema $ quote $ Fn (-> FfiTask)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (demo-server!)
          :examples $ []
          :schema $ quote $ Fn (-> FfiTask)
        'mid-call $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mid-call () (println "|Calling internal function") &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'ok-response $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ok-response (content-type response-body)
            {} (:status :ok) (:code 200)
              :headers $ {} $ :content-type content-type
              :body response-body
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ Map Tag ResponseValue
        'on-request $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request (req)
            println "|Handling request:" $ get req :body
            ; mid-call
            match
              .unwrap-or
                decode-map-as (get req :path) (Option String)
                , |
              |/html $ ok-response |text/html $ make-page
                {} (:title "|Calcit HTTP Demo")
                  :styles $ [] |https://cdn.tiye.me/favored-fonts/main-fonts.css
                  :content $ div
                    {} $ :style $ {} (:font-family ui/font-normal)
                    h1
                      {} $ :style $ {} (:color :red)
                      , "|A demo page"
              |/json $ ok-response |application/json $ json-pretty
                {} (:message "|a piece of json") (:status false)
              |/post-json $ let
                  body $ decode-map-as (get req :body) (Option String)
                  data $ if (.some? body)
                    json-parse $ .unwrap body
                    , nil
                println "|POST data:" data
                ok-response |application/json $ json-pretty $ {} (:message "|another piece of json") (:status false) (:sent-data data)
              _ $ ok-response |text/json $ format-cirru-edn req
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic)
            -> $ Map Tag ResponseValue
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reload) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            http.core :refer $ serve-http!
            stir-template.alias :refer $ make-page div h1
            stir-template.ui :as ui
