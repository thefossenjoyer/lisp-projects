(defpackage #:rps
  (:use :cl))

(in-package #:rps)

(defun get-user ()
  "Gets user's choice."

  (format t "Enter your choice (r, p, s): ")

  (let ((user-choice (read-line)))

    (cond

     ((string= user-choice "r") (return-from get-user "rock"))
     ((string= user-choice "p") (return-from get-user "paper"))
     ((string= user-choice "s") (return-from get-user "scissors"))
      )

    )

)

(defun get-pc ()
  "Generates pc's choice from a list"

  (let ((choices-list '("rock" "paper" "scissors")))
    (let ((random-choice (nth (random (length choices-list)) choices-list) ))
        (return-from get-pc random-choice)
      )
    )
)

(defun game-logic (user-choice pc-choice)
  "Main logic of the RPS game."

  (cond

    ((and (string= user-choice "rock") (string= pc-choice "scissors")) (format t "User wins!"))
    ((and (string= user-choice "scissors") (string= pc-choice "paper")) (format t "User wins!"))
    ((and (string= user-choice "paper") (string= pc-choice "rock")) (format t "User wins!"))

    ((and (string= pc-choice "paper") (string= user-choice "rock")) (format t "PC wins!"))
    ((and (string= pc-choice "rock") (string= user-choice "scissors")) (format t "PC wins!"))
    ((and (string= pc-choice "scissors") (string= user-choice "paper")) (format t "PC wins!"))

    ((string= user-choice pc-choice) (format t "tie!~&"))

    )
)

(defun main () "Main fun."

  (let ((user-choice (get-user)) (pc-choice (get-pc)))
    ;;(format t "pc = ~a~&" pc-choice)
    (game-logic user-choice pc-choice)
    )

)
