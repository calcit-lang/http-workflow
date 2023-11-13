
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.6)
    :modules $ [] |calcit-http/ |calcit-json/ |stir-template/ |lilac/
  :entries $ {}
    :server $ {} (:init-fn |http.test/demo-server!) (:reload-fn |http.test/reload!)
      :modules $ []
  :files $ {}
    |app.main $ %{} :FileEntry
      :defs $ {}
        |demo-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1634925851472) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1634925851472) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1634925851472) (:by |u0) (:text |demo-server!)
              |r $ %{} :Expr (:at 1634925851472) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1634925862141) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634925862536) (:by |u0) (:text |serve-http!)
                  |j $ %{} :Expr (:at 1634925864149) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634925864550) (:by |u0) (:text |{})
                      |j $ %{} :Expr (:at 1634925865947) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1634925868491) (:by |u0) (:text |:port)
                          |j $ %{} :Leaf (:at 1634925873265) (:by |u0) (:text |4000)
                  |r $ %{} :Expr (:at 1634925875730) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1634925876073) (:by |u0) (:text |fn)
                      |j $ %{} :Expr (:at 1634925876370) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1634925879038) (:by |u0) (:text |req)
                      |u $ %{} :Expr (:at 1635234343570) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635234354812) (:by |u0) (:text |on-request)
                          |j $ %{} :Leaf (:at 1635234348198) (:by |u0) (:text |req)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633149996242) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633149996242) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633149996242) (:by |u0) (:text |main!)
              |r $ %{} :Expr (:at 1633149996242) (:by |u0)
                :data $ {}
              |t $ %{} :Expr (:at 1675187360222) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1675187361967) (:by |u0) (:text |demo-server!)
        |mid-call $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1634927786817) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1634927788771) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1635228168857) (:by |u0) (:text |mid-call)
              |r $ %{} :Expr (:at 1634927786817) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1634927789650) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1634927790523) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1635228176331) (:by |u0) (:text "|\"Calling internal function")
        |on-request $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1635234356153) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1635234356153) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1635234356153) (:by |u0) (:text |on-request)
              |r $ %{} :Expr (:at 1635234356153) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635234356153) (:by |u0) (:text |req)
              |s $ %{} :Expr (:at 1635234372099) (:by |u0)
                :data $ {}
                  |j $ %{} :Leaf (:at 1635234372099) (:by |u0) (:text |println)
                  |r $ %{} :Leaf (:at 1635234372099) (:by |u0) (:text "|\"Handling request:")
                  |v $ %{} :Expr (:at 1676190480721) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1676190485304) (:by |u0) (:text |:body)
                      |T $ %{} :Leaf (:at 1635234372099) (:by |u0) (:text |req)
              |sT $ %{} :Expr (:at 1635234439960) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635234441166) (:by |u0) (:text |println)
                  |j $ %{} :Expr (:at 1635234441792) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635234442744) (:by |u0) (:text |:url)
                      |j $ %{} :Leaf (:at 1635234443443) (:by |u0) (:text |req)
              |t $ %{} :Expr (:at 1635234365546) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635234365546) (:by |u0) (:text |;)
                  |j $ %{} :Leaf (:at 1635234365546) (:by |u0) (:text |mid-call)
              |v $ %{} :Expr (:at 1675491728584) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1675491731876) (:by |u0) (:text |case-default)
                  |L $ %{} :Expr (:at 1675491733574) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675491734127) (:by |u0) (:text |:path)
                      |b $ %{} :Leaf (:at 1675491877727) (:by |u0) (:text |req)
                  |T $ %{} :Expr (:at 1675491737298) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635234357410) (:by |u0) (:text |{})
                      |b $ %{} :Expr (:at 1635234357410) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635234357410) (:by |u0) (:text |:status)
                          |j $ %{} :Leaf (:at 1635234357410) (:by |u0) (:text |:ok)
                      |h $ %{} :Expr (:at 1635234357410) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635234357410) (:by |u0) (:text |:code)
                          |j $ %{} :Leaf (:at 1635234357410) (:by |u0) (:text |200)
                      |l $ %{} :Expr (:at 1635234527621) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635234530563) (:by |u0) (:text |:headers)
                          |j $ %{} :Expr (:at 1635234530868) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635234531808) (:by |u0) (:text |{})
                              |j $ %{} :Expr (:at 1635234532157) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635234534604) (:by |u0) (:text |:content-type)
                                  |j $ %{} :Leaf (:at 1675491823352) (:by |u0) (:text "|\"text/json")
                      |o $ %{} :Expr (:at 1635234357410) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635234357410) (:by |u0) (:text |:body)
                          |j $ %{} :Expr (:at 1635234494733) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1635234502294) (:by |u0) (:text |format-cirru-edn)
                              |L $ %{} :Leaf (:at 1635234496887) (:by |u0) (:text |req)
                  |b $ %{} :Expr (:at 1675491792617) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1675491866716) (:by |u0) (:text "|\"/html")
                      |T $ %{} :Expr (:at 1675491739965) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675491740514) (:by |u0) (:text |{})
                          |b $ %{} :Expr (:at 1675491740932) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491742414) (:by |u0) (:text |:status)
                              |b $ %{} :Leaf (:at 1675491743081) (:by |u0) (:text |:ok)
                          |h $ %{} :Expr (:at 1675491743865) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491744593) (:by |u0) (:text |:code)
                              |b $ %{} :Leaf (:at 1675491746391) (:by |u0) (:text |200)
                          |l $ %{} :Expr (:at 1675491746992) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491753400) (:by |u0) (:text |:headers)
                              |b $ %{} :Expr (:at 1675491758298) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675491758298) (:by |u0) (:text |{})
                                  |b $ %{} :Expr (:at 1675491758298) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675491758298) (:by |u0) (:text |:content-type)
                                      |b $ %{} :Leaf (:at 1675491824634) (:by |u0) (:text "|\"text/html")
                          |o $ %{} :Expr (:at 1675491762033) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491763058) (:by |u0) (:text |:body)
                              |b $ %{} :Expr (:at 1675538690426) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1675538694937) (:by |u0) (:text |make-page)
                                  |b $ %{} :Expr (:at 1675538708686) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675538709071) (:by |u0) (:text |{})
                                      |b $ %{} :Expr (:at 1675538709355) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675538710045) (:by |u0) (:text |:title)
                                          |b $ %{} :Expr (:at 1675539088347) (:by |u0)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1675539089041) (:by |u0) (:text |{})
                                              |T $ %{} :Expr (:at 1675539089786) (:by |u0)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1675539105162) (:by |u0) (:text |:innerHTML)
                                                  |T $ %{} :Leaf (:at 1675538716952) (:by |u0) (:text "|\"Calcit HTTP Demo")
                                      |h $ %{} :Expr (:at 1675538719392) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675538727035) (:by |u0) (:text |:styles)
                                          |b $ %{} :Expr (:at 1675538727443) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1675538727616) (:by |u0) (:text |[])
                                              |b $ %{} :Leaf (:at 1675539207505) (:by |u0) (:text "|\"https://cdn.tiye.me/favored-fonts/main-fonts.css")
                                      |l $ %{} :Expr (:at 1675586867843) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675586869688) (:by |u0) (:text |:content)
                                          |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |div)
                                              |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |{})
                                                  |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |:style)
                                                      |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |{})
                                                          |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |:font-family)
                                                              |b $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |ui/font-normal)
                                              |h $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |h1)
                                                  |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |{})
                                                      |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |:style)
                                                          |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |{})
                                                              |b $ %{} :Expr (:at 1675587526445) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |:color)
                                                                  |b $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text |:red)
                                                  |h $ %{} :Leaf (:at 1675587526445) (:by |u0) (:text "|\"A demo page")
                  |h $ %{} :Expr (:at 1675491795329) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675491868273) (:by |u0) (:text "|\"/json")
                      |b $ %{} :Expr (:at 1675491798671) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675491799061) (:by |u0) (:text |{})
                          |b $ %{} :Expr (:at 1675491801507) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491802830) (:by |u0) (:text |:status)
                              |b $ %{} :Leaf (:at 1675491804755) (:by |u0) (:text |:ok)
                          |h $ %{} :Expr (:at 1675491805455) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491807440) (:by |u0) (:text |:code)
                              |b $ %{} :Leaf (:at 1675491808794) (:by |u0) (:text |200)
                          |l $ %{} :Expr (:at 1675491814224) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491815414) (:by |u0) (:text |:headers)
                              |b $ %{} :Expr (:at 1675491818516) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675491818516) (:by |u0) (:text |{})
                                  |b $ %{} :Expr (:at 1675491818516) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675491818516) (:by |u0) (:text |:content-type)
                                      |b $ %{} :Leaf (:at 1675491821152) (:by |u0) (:text "|\"application/json")
                          |o $ %{} :Expr (:at 1675491826650) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675491828819) (:by |u0) (:text |:body)
                              |b $ %{} :Expr (:at 1675491830682) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675491833918) (:by |u0) (:text |json/stringify)
                                  |X $ %{} :Expr (:at 1675491836906) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675491837262) (:by |u0) (:text |{})
                                      |b $ %{} :Expr (:at 1675491837824) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675491839769) (:by |u0) (:text |:message)
                                          |b $ %{} :Leaf (:at 1676242275662) (:by |u0) (:text "|\"a piece of json")
                                      |h $ %{} :Expr (:at 1676190159952) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676190165468) (:by |u0) (:text |:status)
                                          |b $ %{} :Leaf (:at 1676190167734) (:by |u0) (:text |false)
                                  |b $ %{} :Leaf (:at 1675491836188) (:by |u0) (:text |true)
                  |l $ %{} :Expr (:at 1676241775972) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1676241779331) (:by |u0) (:text "|\"/post-json")
                      |b $ %{} :Expr (:at 1676241784175) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1676242115190) (:by |u0) (:text |let)
                          |H $ %{} :Expr (:at 1676242117095) (:by |u0)
                            :data $ {}
                              |b $ %{} :Expr (:at 1676242130847) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676242131302) (:by |u0) (:text |data)
                                  |b $ %{} :Expr (:at 1676242131644) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676242131857) (:by |u0) (:text |if)
                                      |b $ %{} :Expr (:at 1676242132323) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676242134153) (:by |u0) (:text |some?)
                                          |b $ %{} :Expr (:at 1676242145565) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1676242145565) (:by |u0) (:text |:body)
                                              |b $ %{} :Leaf (:at 1676242145565) (:by |u0) (:text |req)
                                      |h $ %{} :Expr (:at 1676242140155) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676242140155) (:by |u0) (:text |json/parse)
                                          |b $ %{} :Expr (:at 1676242140155) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1676242140155) (:by |u0) (:text |:body)
                                              |b $ %{} :Leaf (:at 1676242140155) (:by |u0) (:text |req)
                                      |l $ %{} :Leaf (:at 1676242150185) (:by |u0) (:text |nil)
                          |L $ %{} :Expr (:at 1676241788507) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1676241790846) (:by |u0) (:text |println)
                              |X $ %{} :Leaf (:at 1676242162462) (:by |u0) (:text "|\"POST data:")
                              |b $ %{} :Leaf (:at 1676242157468) (:by |u0) (:text |data)
                          |T $ %{} :Expr (:at 1676241783779) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |{})
                              |b $ %{} :Expr (:at 1676241783779) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:status)
                                  |b $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:ok)
                              |h $ %{} :Expr (:at 1676241783779) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:code)
                                  |b $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |200)
                              |l $ %{} :Expr (:at 1676241783779) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:headers)
                                  |b $ %{} :Expr (:at 1676241783779) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |{})
                                      |b $ %{} :Expr (:at 1676241783779) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:content-type)
                                          |b $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text "|\"application/json")
                              |o $ %{} :Expr (:at 1676241783779) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:body)
                                  |b $ %{} :Expr (:at 1676241783779) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |json/stringify)
                                      |b $ %{} :Expr (:at 1676241783779) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |{})
                                          |b $ %{} :Expr (:at 1676241783779) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:message)
                                              |b $ %{} :Leaf (:at 1676242280857) (:by |u0) (:text "|\"another piece of json")
                                          |h $ %{} :Expr (:at 1676241783779) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |:status)
                                              |b $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |false)
                                          |l $ %{} :Expr (:at 1676242180438) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1676242183143) (:by |u0) (:text |:sent-data)
                                              |b $ %{} :Leaf (:at 1676242186292) (:by |u0) (:text |data)
                                      |h $ %{} :Leaf (:at 1676241783779) (:by |u0) (:text |true)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1633149998862) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1633149998862) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1633149998862) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1633149998862) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1635234381868) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635234382819) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1635234384199) (:by |u0) (:text "|\"Reload")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1633149625774) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1633149625774) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1633149625774) (:by |u0) (:text |app.main)
            |r $ %{} :Expr (:at 1633149974572) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1633149975596) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1634703855566) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1634925723309) (:by |u0) (:text |http.core)
                    |j $ %{} :Leaf (:at 1634703859915) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1634925717139) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1634925857666) (:by |u0) (:text |serve-http!)
                |m $ %{} :Expr (:at 1675538580460) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675538638365) (:by |u0) (:text |stir-template.alias)
                    |b $ %{} :Leaf (:at 1675538585696) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1675538586416) (:by |u0)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1675587474494) (:by |u0) (:text |make-page)
                        |T $ %{} :Leaf (:at 1675538641415) (:by |u0) (:text |div)
                        |b $ %{} :Leaf (:at 1675538794873) (:by |u0) (:text |h1)
                |mj $ %{} :Expr (:at 1675538580460) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675539254419) (:by |u0) (:text |stir-template.ui)
                    |b $ %{} :Leaf (:at 1675539259214) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1675539259593) (:by |u0) (:text |ui)
                |n $ %{} :Expr (:at 1675491847467) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675491850012) (:by |u0) (:text |json.core)
                    |b $ %{} :Leaf (:at 1675491850969) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1675491852023) (:by |u0) (:text |json)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
