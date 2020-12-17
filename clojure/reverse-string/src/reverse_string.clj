(ns reverse-string
  (:require [clojure.spec.alpha :as s]))

(s/fdef reverse-string
        :args (s/cat :s string?)
        :ret string?)

(defn reverse-string [s]
  (->> s (into '()) (apply str)))

;; When I give `reverse-string` a vector input of int [1 2 3]
;; it return 321,
;; I thought it will throw an IllegalArgumentException,
;; because, I specify that the args should be a string
;;
;; How to make that in only works for string arg with the spec?