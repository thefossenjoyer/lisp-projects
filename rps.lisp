(defpackage #:rps
  (:use :cl))
(in-package #:rps)

(defvar options '("rock" "paper" "scissors"))

(defparameter pc_option "")

(defvar user_option)

(defun game_loop () "Runs the game"
  ;; Setting pc_option to a random element from options
  (setf pc_option (nth (random (length options)) options))
  (format t "pc: ~a ~&" pc_option)

  (print "Play: ")

  (setf user_option (make-array '(0) :element-type 'base-char :adjustable t))
  (setf user_option (read-line))

  (cond

    ((string= user_option "q") (print "Bye bye."))

    ((string= user_option pc_option) (print "TIE!"))

    ((and (string= user_option "rock") (string= pc_option "paper")) (print "PC: Paper covers rock!"))
    ((and (string= user_option "paper") (string= pc_option "rock")) (print "User: Paper covers rock!"))

    ((and (string= user_option "rock") (string= pc_option "scissors")) (print "User: Rock crushes scissors!"))
    ((and (string= user_option "scissors") (string= pc_option "rock")) (print "PC: Rock crushes scissors!"))

    ((and (string= user_option "scissors") (string= pc_option "paper")) (print "User: Scissors cut paper!"))
    ((and (string= user_option "paper") (string= pc_option "scissors")) (print "PC: Scissors cut paper!"))


    )

)

(game_loop)
