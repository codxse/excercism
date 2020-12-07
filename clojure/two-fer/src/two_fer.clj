(ns two-fer
  (:require [clojure.spec.alpha :as s]))

(s/fdef two-fer
        :args (s/alt :nullary (s/cat)
                     :unary (s/cat :name string?))
        :ret string?)

(defn two-fer
  ([] (two-fer "you"))
  ([name] (format "One for %s, one for me." name)))
