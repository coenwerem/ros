;; Auto-generated. Do not edit!


(when (boundp 'hello_world::motorDriver)
  (if (not (find-package "HELLO_WORLD"))
    (make-package "HELLO_WORLD"))
  (shadow 'motorDriver (find-package "HELLO_WORLD")))
(unless (find-package "HELLO_WORLD::MOTORDRIVER")
  (make-package "HELLO_WORLD::MOTORDRIVER"))

(in-package "ROS")
;;//! \htmlinclude motorDriver.msg.html


(defclass hello_world::motorDriver
  :super ros::object
  :slots (_ENABLE_A _ENABLE_B _dir1 _dir2 _dir3 _dir4 ))

(defmethod hello_world::motorDriver
  (:init
   (&key
    ((:ENABLE_A __ENABLE_A) 0)
    ((:ENABLE_B __ENABLE_B) 0)
    ((:dir1 __dir1) 0)
    ((:dir2 __dir2) 0)
    ((:dir3 __dir3) 0)
    ((:dir4 __dir4) 0)
    )
   (send-super :init)
   (setq _ENABLE_A (round __ENABLE_A))
   (setq _ENABLE_B (round __ENABLE_B))
   (setq _dir1 (round __dir1))
   (setq _dir2 (round __dir2))
   (setq _dir3 (round __dir3))
   (setq _dir4 (round __dir4))
   self)
  (:ENABLE_A
   (&optional __ENABLE_A)
   (if __ENABLE_A (setq _ENABLE_A __ENABLE_A)) _ENABLE_A)
  (:ENABLE_B
   (&optional __ENABLE_B)
   (if __ENABLE_B (setq _ENABLE_B __ENABLE_B)) _ENABLE_B)
  (:dir1
   (&optional __dir1)
   (if __dir1 (setq _dir1 __dir1)) _dir1)
  (:dir2
   (&optional __dir2)
   (if __dir2 (setq _dir2 __dir2)) _dir2)
  (:dir3
   (&optional __dir3)
   (if __dir3 (setq _dir3 __dir3)) _dir3)
  (:dir4
   (&optional __dir4)
   (if __dir4 (setq _dir4 __dir4)) _dir4)
  (:serialization-length
   ()
   (+
    ;; int64 _ENABLE_A
    8
    ;; int64 _ENABLE_B
    8
    ;; int64 _dir1
    8
    ;; int64 _dir2
    8
    ;; int64 _dir3
    8
    ;; int64 _dir4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ENABLE_A
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ENABLE_A (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ENABLE_A) (= (length (_ENABLE_A . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ENABLE_A . bv) 0) 0) s)
              (write-long (ash (elt (_ENABLE_A . bv) 1) -1) s))
             ((and (class _ENABLE_A) (= (length (_ENABLE_A . bv)) 1)) ;; big1
              (write-long (elt (_ENABLE_A . bv) 0) s)
              (write-long (if (>= _ENABLE_A 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ENABLE_A s)(write-long (if (>= _ENABLE_A 0) 0 #xffffffff) s)))
     ;; int64 _ENABLE_B
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ENABLE_B (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ENABLE_B) (= (length (_ENABLE_B . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ENABLE_B . bv) 0) 0) s)
              (write-long (ash (elt (_ENABLE_B . bv) 1) -1) s))
             ((and (class _ENABLE_B) (= (length (_ENABLE_B . bv)) 1)) ;; big1
              (write-long (elt (_ENABLE_B . bv) 0) s)
              (write-long (if (>= _ENABLE_B 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ENABLE_B s)(write-long (if (>= _ENABLE_B 0) 0 #xffffffff) s)))
     ;; int64 _dir1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _dir1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _dir1) (= (length (_dir1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_dir1 . bv) 0) 0) s)
              (write-long (ash (elt (_dir1 . bv) 1) -1) s))
             ((and (class _dir1) (= (length (_dir1 . bv)) 1)) ;; big1
              (write-long (elt (_dir1 . bv) 0) s)
              (write-long (if (>= _dir1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _dir1 s)(write-long (if (>= _dir1 0) 0 #xffffffff) s)))
     ;; int64 _dir2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _dir2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _dir2) (= (length (_dir2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_dir2 . bv) 0) 0) s)
              (write-long (ash (elt (_dir2 . bv) 1) -1) s))
             ((and (class _dir2) (= (length (_dir2 . bv)) 1)) ;; big1
              (write-long (elt (_dir2 . bv) 0) s)
              (write-long (if (>= _dir2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _dir2 s)(write-long (if (>= _dir2 0) 0 #xffffffff) s)))
     ;; int64 _dir3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _dir3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _dir3) (= (length (_dir3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_dir3 . bv) 0) 0) s)
              (write-long (ash (elt (_dir3 . bv) 1) -1) s))
             ((and (class _dir3) (= (length (_dir3 . bv)) 1)) ;; big1
              (write-long (elt (_dir3 . bv) 0) s)
              (write-long (if (>= _dir3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _dir3 s)(write-long (if (>= _dir3 0) 0 #xffffffff) s)))
     ;; int64 _dir4
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _dir4 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _dir4) (= (length (_dir4 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_dir4 . bv) 0) 0) s)
              (write-long (ash (elt (_dir4 . bv) 1) -1) s))
             ((and (class _dir4) (= (length (_dir4 . bv)) 1)) ;; big1
              (write-long (elt (_dir4 . bv) 0) s)
              (write-long (if (>= _dir4 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _dir4 s)(write-long (if (>= _dir4 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ENABLE_A
#+(or :alpha :irix6 :x86_64)
      (setf _ENABLE_A (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ENABLE_A (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ENABLE_B
#+(or :alpha :irix6 :x86_64)
      (setf _ENABLE_B (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ENABLE_B (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _dir1
#+(or :alpha :irix6 :x86_64)
      (setf _dir1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _dir1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _dir2
#+(or :alpha :irix6 :x86_64)
      (setf _dir2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _dir2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _dir3
#+(or :alpha :irix6 :x86_64)
      (setf _dir3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _dir3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _dir4
#+(or :alpha :irix6 :x86_64)
      (setf _dir4 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _dir4 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get hello_world::motorDriver :md5sum-) "8c45e6bc60f8399dea1a593d7b7b6626")
(setf (get hello_world::motorDriver :datatype-) "hello_world/motorDriver")
(setf (get hello_world::motorDriver :definition-)
      "int64 ENABLE_A
int64 ENABLE_B
int64 dir1
int64 dir2 
int64 dir3
int64 dir4 
")



(provide :hello_world/motorDriver "8c45e6bc60f8399dea1a593d7b7b6626")


