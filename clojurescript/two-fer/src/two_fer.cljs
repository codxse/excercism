(ns two-fer
  (:require [cljs.spec.alpha :as s]))

(s/fdef two-fer
        :args (s/alt :nullary (s/cat)
                     :unary (s/cat name string?))
        :ret string?)

(defn two-fer
  ([] (two-fer "you"))
  ([name] (str "One for " name ", one for me.")))
