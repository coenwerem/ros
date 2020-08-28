;; Auto-generated. Do not edit!


(when (boundp 'hello_world::ultRangerData)
  (if (not (find-package "HELLO_WORLD"))
    (make-package "HELLO_WORLD"))
  (shadow 'ultRangerData (find-package "HELLO_WORLD")))
(unless (find-package "HELLO_WORLD::ULTRANGERDATA")
  (make-package "HELLO_WORLD::ULTRANGERDATA"))

(in-package "ROS")
;;//! \htmlinclude ultRangerData.msg.html


(defclass hello_world::ultRangerData
  :super ros::object
  :slots (_distance _ECHO _TRIG ))

(defmethod hello_world::ultRangerData
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:ECHO __ECHO) 0)
    ((:TRIG __TRIG) 0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _ECHO (round __ECHO))
   (setq _TRIG (round __TRIG))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:ECHO
   (&optional __ECHO)
   (if __ECHO (setq _ECHO __ECHO)) _ECHO)
  (:TRIG
   (&optional __TRIG)
   (if __TRIG (setq _TRIG __TRIG)) _TRIG)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; int64 _ECHO
    8
    ;; int64 _TRIG
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _ECHO
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ECHO (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ECHO) (= (length (_ECHO . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ECHO . bv) 0) 0) s)
              (write-long (ash (elt (_ECHO . bv) 1) -1) s))
             ((and (class _ECHO) (= (length (_ECHO . bv)) 1)) ;; big1
              (write-long (elt (_ECHO . bv) 0) s)
              (write-long (if (>= _ECHO 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ECHO s)(write-long (if (>= _ECHO 0) 0 #xffffffff) s)))
     ;; int64 _TRIG
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _TRIG (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _TRIG) (= (length (_TRIG . bv)) 2)) ;; bignum
              (write-long (ash (elt (_TRIG . bv) 0) 0) s)
              (write-long (ash (elt (_TRIG . bv) 1) -1) s))
             ((and (class _TRIG) (= (length (_TRIG . bv)) 1)) ;; big1
              (write-long (elt (_TRIG . bv) 0) s)
              (write-long (if (>= _TRIG 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _TRIG s)(write-long (if (>= _TRIG 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _ECHO
#+(or :alpha :irix6 :x86_64)
      (setf _ECHO (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ECHO (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _TRIG
#+(or :alpha :irix6 :x86_64)
      (setf _TRIG (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _TRIG (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get hello_world::ultRangerData :md5sum-) "977bed47f562a4bff3f01c6a45d8dc10")
(setf (get hello_world::ultRangerData :datatype-) "hello_world/ultRangerData")
(setf (get hello_world::ultRangerData :definition-)
      "float64 distance
int64 ECHO
int64 TRIG

")



(provide :hello_world/ultRangerData "977bed47f562a4bff3f01c6a45d8dc10")


