
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.6)
    :modules $ [] |calcit-http/ |calcit-json/ |stir-template/ |lilac/
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
              |v $ {} (:at 1675491728584) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1675491731876) (:by |u0) (:text |case-default) (:type :leaf)
                  |L $ {} (:at 1675491733574) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1675491734127) (:by |u0) (:text |:path) (:type :leaf)
                      |b $ {} (:at 1675491877727) (:by |u0) (:text |req) (:type :leaf)
                  |T $ {} (:at 1675491737298) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635234357410) (:by |u0) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1635234357410) (:by |u0) (:text |:status) (:type :leaf)
                          |j $ {} (:at 1635234357410) (:by |u0) (:text |:ok) (:type :leaf)
                      |h $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1635234357410) (:by |u0) (:text |:code) (:type :leaf)
                          |j $ {} (:at 1635234357410) (:by |u0) (:text |200) (:type :leaf)
                      |l $ {} (:at 1635234527621) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1635234530563) (:by |u0) (:text |:headers) (:type :leaf)
                          |j $ {} (:at 1635234530868) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1635234531808) (:by |u0) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1635234532157) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1635234534604) (:by |u0) (:text |:content-type) (:type :leaf)
                                  |j $ {} (:at 1675491823352) (:by |u0) (:text "|\"text/json") (:type :leaf)
                      |o $ {} (:at 1635234357410) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1635234357410) (:by |u0) (:text |:body) (:type :leaf)
                          |j $ {} (:at 1635234494733) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1635234502294) (:by |u0) (:text |format-cirru-edn) (:type :leaf)
                              |L $ {} (:at 1635234496887) (:by |u0) (:text |req) (:type :leaf)
                  |b $ {} (:at 1675491792617) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1675491866716) (:by |u0) (:text "|\"/html") (:type :leaf)
                      |T $ {} (:at 1675491739965) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1675491740514) (:by |u0) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1675491740932) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491742414) (:by |u0) (:text |:status) (:type :leaf)
                              |b $ {} (:at 1675491743081) (:by |u0) (:text |:ok) (:type :leaf)
                          |h $ {} (:at 1675491743865) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491744593) (:by |u0) (:text |:code) (:type :leaf)
                              |b $ {} (:at 1675491746391) (:by |u0) (:text |200) (:type :leaf)
                          |l $ {} (:at 1675491746992) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491753400) (:by |u0) (:text |:headers) (:type :leaf)
                              |b $ {} (:at 1675491758298) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1675491758298) (:by |u0) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1675491758298) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1675491758298) (:by |u0) (:text |:content-type) (:type :leaf)
                                      |b $ {} (:at 1675491824634) (:by |u0) (:text "|\"text/html") (:type :leaf)
                          |o $ {} (:at 1675491762033) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491763058) (:by |u0) (:text |:body) (:type :leaf)
                              |b $ {} (:at 1675538690426) (:by |u0) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1675538694937) (:by |u0) (:text |make-page) (:type :leaf)
                                  |b $ {} (:at 1675538708686) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1675538709071) (:by |u0) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1675538709355) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1675538710045) (:by |u0) (:text |:title) (:type :leaf)
                                          |b $ {} (:at 1675539088347) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1675539089041) (:by |u0) (:text |{}) (:type :leaf)
                                              |T $ {} (:at 1675539089786) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1675539105162) (:by |u0) (:text |:innerHTML) (:type :leaf)
                                                  |T $ {} (:at 1675538716952) (:by |u0) (:text "|\"Calcit HTTP Demo") (:type :leaf)
                                      |h $ {} (:at 1675538719392) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1675538727035) (:by |u0) (:text |:styles) (:type :leaf)
                                          |b $ {} (:at 1675538727443) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1675538727616) (:by |u0) (:text |[]) (:type :leaf)
                                              |b $ {} (:at 1675539207505) (:by |u0) (:text "|\"https://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf)
                                      |l $ {} (:at 1675586867843) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1675586869688) (:by |u0) (:text |:content) (:type :leaf)
                                          |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1675587526445) (:by |u0) (:text |div) (:type :leaf)
                                              |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1675587526445) (:by |u0) (:text |{}) (:type :leaf)
                                                  |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1675587526445) (:by |u0) (:text |:style) (:type :leaf)
                                                      |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1675587526445) (:by |u0) (:text |{}) (:type :leaf)
                                                          |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1675587526445) (:by |u0) (:text |:font-family) (:type :leaf)
                                                              |b $ {} (:at 1675587526445) (:by |u0) (:text |ui/font-normal) (:type :leaf)
                                              |h $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1675587526445) (:by |u0) (:text |h1) (:type :leaf)
                                                  |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1675587526445) (:by |u0) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1675587526445) (:by |u0) (:text |:style) (:type :leaf)
                                                          |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1675587526445) (:by |u0) (:text |{}) (:type :leaf)
                                                              |b $ {} (:at 1675587526445) (:by |u0) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1675587526445) (:by |u0) (:text |:color) (:type :leaf)
                                                                  |b $ {} (:at 1675587526445) (:by |u0) (:text |:red) (:type :leaf)
                                                  |h $ {} (:at 1675587526445) (:by |u0) (:text "|\"A demo page") (:type :leaf)
                  |h $ {} (:at 1675491795329) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1675491868273) (:by |u0) (:text "|\"/json") (:type :leaf)
                      |b $ {} (:at 1675491798671) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1675491799061) (:by |u0) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1675491801507) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491802830) (:by |u0) (:text |:status) (:type :leaf)
                              |b $ {} (:at 1675491804755) (:by |u0) (:text |:ok) (:type :leaf)
                          |h $ {} (:at 1675491805455) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491807440) (:by |u0) (:text |:code) (:type :leaf)
                              |b $ {} (:at 1675491808794) (:by |u0) (:text |200) (:type :leaf)
                          |l $ {} (:at 1675491814224) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491815414) (:by |u0) (:text |:headers) (:type :leaf)
                              |b $ {} (:at 1675491818516) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1675491818516) (:by |u0) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1675491818516) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1675491818516) (:by |u0) (:text |:content-type) (:type :leaf)
                                      |b $ {} (:at 1675491821152) (:by |u0) (:text "|\"application/json") (:type :leaf)
                          |o $ {} (:at 1675491826650) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1675491828819) (:by |u0) (:text |:body) (:type :leaf)
                              |b $ {} (:at 1675491830682) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1675491833918) (:by |u0) (:text |json/stringify) (:type :leaf)
                                  |X $ {} (:at 1675491836906) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1675491837262) (:by |u0) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1675491837824) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1675491839769) (:by |u0) (:text |:message) (:type :leaf)
                                          |b $ {} (:at 1675491844490) (:by |u0) (:text "|\"a piece of json") (:type :leaf)
                                  |b $ {} (:at 1675491836188) (:by |u0) (:text |true) (:type :leaf)
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
                |m $ {} (:at 1675538580460) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1675538638365) (:by |u0) (:text |stir-template.alias) (:type :leaf)
                    |b $ {} (:at 1675538585696) (:by |u0) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1675538586416) (:by |u0) (:type :expr)
                      :data $ {}
                        |D $ {} (:at 1675587474494) (:by |u0) (:text |make-page) (:type :leaf)
                        |T $ {} (:at 1675538641415) (:by |u0) (:text |div) (:type :leaf)
                        |b $ {} (:at 1675538794873) (:by |u0) (:text |h1) (:type :leaf)
                |mj $ {} (:at 1675538580460) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1675539254419) (:by |u0) (:text |stir-template.ui) (:type :leaf)
                    |b $ {} (:at 1675539259214) (:by |u0) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1675539259593) (:by |u0) (:text |ui) (:type :leaf)
                |n $ {} (:at 1675491847467) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1675491850012) (:by |u0) (:text |json.core) (:type :leaf)
                    |b $ {} (:at 1675491850969) (:by |u0) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1675491852023) (:by |u0) (:text |json) (:type :leaf)
        :proc $ {} (:at 1633149625774) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
