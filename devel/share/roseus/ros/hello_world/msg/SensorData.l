;; Auto-generated. Do not edit!


(when (boundp 'hello_world::SensorData)
  (if (not (find-package "HELLO_WORLD"))
    (make-package "HELLO_WORLD"))
  (shadow 'SensorData (find-package "HELLO_WORLD")))
(unless (find-package "HELLO_WORLD::SENSORDATA")
  (make-package "HELLO_WORLD::SENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude SensorData.msg.html


(defclass hello_world::SensorData
  :super ros::object
  :slots (_manufacturer_name _distance _sensor_type _max_range _min_range ))

(defmethod hello_world::SensorData
  (:init
   (&key
    ((:manufacturer_name __manufacturer_name) "")
    ((:distance __distance) 0)
    ((:sensor_type __sensor_type) "")
    ((:max_range __max_range) 0)
    ((:min_range __min_range) 0)
    )
   (send-super :init)
   (setq _manufacturer_name (string __manufacturer_name))
   (setq _distance (round __distance))
   (setq _sensor_type (string __sensor_type))
   (setq _max_range (round __max_range))
   (setq _min_range (round __min_range))
   self)
  (:manufacturer_name
   (&optional __manufacturer_name)
   (if __manufacturer_name (setq _manufacturer_name __manufacturer_name)) _manufacturer_name)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:sensor_type
   (&optional __sensor_type)
   (if __sensor_type (setq _sensor_type __sensor_type)) _sensor_type)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:min_range
   (&optional __min_range)
   (if __min_range (setq _min_range __min_range)) _min_range)
  (:serialization-length
   ()
   (+
    ;; string _manufacturer_name
    4 (length _manufacturer_name)
    ;; int64 _distance
    8
    ;; string _sensor_type
    4 (length _sensor_type)
    ;; int64 _max_range
    8
    ;; int64 _min_range
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _manufacturer_name
       (write-long (length _manufacturer_name) s) (princ _manufacturer_name s)
     ;; int64 _distance
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _distance (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _distance) (= (length (_distance . bv)) 2)) ;; bignum
              (write-long (ash (elt (_distance . bv) 0) 0) s)
              (write-long (ash (elt (_distance . bv) 1) -1) s))
             ((and (class _distance) (= (length (_distance . bv)) 1)) ;; big1
              (write-long (elt (_distance . bv) 0) s)
              (write-long (if (>= _distance 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _distance s)(write-long (if (>= _distance 0) 0 #xffffffff) s)))
     ;; string _sensor_type
       (write-long (length _sensor_type) s) (princ _sensor_type s)
     ;; int64 _max_range
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _max_range (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _max_range) (= (length (_max_range . bv)) 2)) ;; bignum
              (write-long (ash (elt (_max_range . bv) 0) 0) s)
              (write-long (ash (elt (_max_range . bv) 1) -1) s))
             ((and (class _max_range) (= (length (_max_range . bv)) 1)) ;; big1
              (write-long (elt (_max_range . bv) 0) s)
              (write-long (if (>= _max_range 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _max_range s)(write-long (if (>= _max_range 0) 0 #xffffffff) s)))
     ;; int64 _min_range
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _min_range (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _min_range) (= (length (_min_range . bv)) 2)) ;; bignum
              (write-long (ash (elt (_min_range . bv) 0) 0) s)
              (write-long (ash (elt (_min_range . bv) 1) -1) s))
             ((and (class _min_range) (= (length (_min_range . bv)) 1)) ;; big1
              (write-long (elt (_min_range . bv) 0) s)
              (write-long (if (>= _min_range 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _min_range s)(write-long (if (>= _min_range 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _manufacturer_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _manufacturer_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _distance
#+(or :alpha :irix6 :x86_64)
      (setf _distance (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _distance (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _sensor_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _max_range
#+(or :alpha :irix6 :x86_64)
      (setf _max_range (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _max_range (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _min_range
#+(or :alpha :irix6 :x86_64)
      (setf _min_range (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _min_range (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get hello_world::SensorData :md5sum-) "4a1990867dc4d7d4a1a2518817eae425")
(setf (get hello_world::SensorData :datatype-) "hello_world/SensorData")
(setf (get hello_world::SensorData :definition-)
      "string manufacturer_name
int64 distance
string sensor_type
int64 max_range
int64 min_range
")



(provide :hello_world/SensorData "4a1990867dc4d7d4a1a2518817eae425")


