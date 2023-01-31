
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.6)
    :modules $ [] |calcit-http/
  :entries $ {}
    :server $ {} (:init-fn |http.test/demo-server!) (:reload-fn |http.test/reload!)
      :modules $ []
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :configs $ {}
        :defs $ {}
          |demo-server! $ {} (:at 1634925851472) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634925851472) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634925851472) (:by |u0) (:text |demo-server!) (:type :leaf)
              |r $ {} (:at 1634925851472) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634925862141) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634925862536) (:by |u0) (:text |serve-http!) (:type :leaf)
                  |j $ {} (:at 1634925864149) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634925864550) (:by |u0) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1634925865947) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634925868491) (:by |u0) (:text |:port) (:type :leaf)
                          |j $ {} (:at 1634925873265) (:by |u0) (:text |4000) (:type :leaf)
                  |r $ {} (:at 1634925875730) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634925876073) (:by |u0) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1634925876370) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634925879038) (:by |u0) (:text |req) (:type :leaf)
                      |u $ {} (:at 1635234343570) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1635234354812) (:by |u0) (:text |on-request) (:type :leaf)
                          |j $ {} (:at 1635234348198) (:by |u0) (:text |req) (:type :leaf)
          |main! $ {} (:at 1633149996242) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633149996242) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633149996242) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1633149996242) (:by |u0) (:type :expr)
                :data $ {}
              |t $ {} (:at 1675187360222) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1675187361967) (:by |u0) (:text |demo-server!) (:type :leaf)
          |mid-call $ {} (:at 1634927786817) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634927788771) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1635228168857) (:by |u0) (:text |mid-call) (:type :leaf)
              |r $ {} (:at 1634927786817) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634927789650) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634927790523) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1635228176331) (:by |u0) (:text "|\"Calling internal function") (:type :leaf)
          |on-request $ {} (:at 1635234356153) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1635234356153) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1635234356153) (:by |u0) (:text |on-request) (:type :leaf)
              |r $ {} (:at 1635234356153) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635234356153) (:by |u0) (:text |req) (:type :leaf)
              |s $ {} (:at 1635234372099) (:by |u0) (:type :expr)
                :data $ {}
                  |L $ {} (:at 1649937276422) (:by |u0) (:text |;) (:type :leaf)
                  |j $ {} (:at 1635234372099) (:by |u0) (:text |println) (:type :leaf)
                  |r $ {} (:at 1635234372099) (:by |u0) (:text "|\"Handling request:") (:type :leaf)
                  |v $ {} (:at 1635234372099) (:by |u0) (:text |req) (:type :leaf)
              |sT $ {} (:at 1635234439960) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635234441166) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1635234441792) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635234442744) (:by |u0) (:text |:url) (:type :leaf)
                      |j $ {} (:at 1635234443443) (:by |u0) (:text |req) (:type :leaf)
              |t $ {} (:at 1635234365546) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635234365546) (:by |u0) (:text |;) (:type :leaf)
                  |j $ {} (:at 1635234365546) (:by |u0) (:text |mid-call) (:type :leaf)
              |v $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635234357410) (:by |u0) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635234357410) (:by |u0) (:text |:status) (:type :leaf)
                      |j $ {} (:at 1635234357410) (:by |u0) (:text |:ok) (:type :leaf)
                  |r $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635234357410) (:by |u0) (:text |:code) (:type :leaf)
                      |j $ {} (:at 1635234357410) (:by |u0) (:text |200) (:type :leaf)
                  |t $ {} (:at 1635234527621) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635234530563) (:by |u0) (:text |:headers) (:type :leaf)
                      |j $ {} (:at 1635234530868) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1635234531808) (:by |u0) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1635234532157) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1635234534604) (:by |u0) (:text |:content-type) (:type :leaf)
                              |j $ {} (:at 1649936690797) (:by |u0) (:text "|\"application/json") (:type :leaf)
                  |v $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635234357410) (:by |u0) (:text |:body) (:type :leaf)
                      |j $ {} (:at 1635234494733) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1635234502294) (:by |u0) (:text |format-cirru-edn) (:type :leaf)
                          |L $ {} (:at 1635234496887) (:by |u0) (:text |req) (:type :leaf)
          |reload! $ {} (:at 1633149998862) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1633149998862) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1633149998862) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1633149998862) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1635234381868) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635234382819) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1635234384199) (:by |u0) (:text "|\"Reload") (:type :leaf)
        :ns $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1633149625774) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1633149625774) (:by |u0) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1633149974572) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1633149975596) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1634703855566) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634925723309) (:by |u0) (:text |http.core) (:type :leaf)
                    |j $ {} (:at 1634703859915) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634925717139) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634925857666) (:by |u0) (:text |serve-http!) (:type :leaf)
        :proc $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
