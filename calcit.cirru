
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
        'demo-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn demo-server! ()
            serve-http!
              {} $ :port 4000
              fn (req) (on-request req)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (demo-server!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ []
        'mid-call $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mid-call () (println "|Calling internal function")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-request $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request (req)
            println "|Handling request:" $ get req :body
            ; mid-call
            match
              .unwrap-or
                decode-map-as (get req :path) (:: 'Option 'String)
                , |
              |/html $ {} (:status :ok) (:code 200)
                :headers $ {} $ :content-type |text/html
                :body $ make-page $ {} (:title "|Calcit HTTP Demo")
                  :styles $ [] |https://cdn.tiye.me/favored-fonts/main-fonts.css
                  :content $ div
                    {} $ :style $ {} (:font-family ui/font-normal)
                    h1
                      {} $ :style $ {} (:color :red)
                      , "|A demo page"
              |/json $ {} (:status :ok) (:code 200)
                :headers $ {} $ :content-type |application/json
                :body $ json-pretty $ {} (:message "|a piece of json") (:status false)
              |/post-json $ let
                  body $ decode-map-as (get req :body) (:: 'Option 'String)
                  data $ if (.some? body)
                    json-parse $ .unwrap body
                    , nil
                println "|POST data:" data
                {} (:status :ok) (:code 200)
                  :headers $ {} $ :content-type |application/json
                  :body $ json-pretty $ {} (:message "|another piece of json") (:status false) (:sent-data data)
              _ $ {} (:status :ok) (:code 200)
                :headers $ {} $ :content-type |text/json
                :body $ format-cirru-edn req
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reload)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            http.core :refer $ serve-http!
            stir-template.alias :refer $ make-page div h1
            stir-template.ui :as ui
