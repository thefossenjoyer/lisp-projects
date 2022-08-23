(defvar secret_word "emacs")

(defvar lives 3)

(defun game_loop ()
  "Running the game."

  (print "Enter your guess: ")

  (defvar user_guess)

  (setf user_guess (make-array '(0) :element-type 'base-char :fill-pointer 0 :adjustable t)) ;; "reseting" user_guess
  (setf user_guess (read))

  (cond

    ((= 0 lives) (print "Eh.. game over.."))

    ((string-equal user_guess secret_word) (print "Nice! You won!"))

    ((not (string-equal user_guess secret_word)) (print "Try again.") (setf lives (- lives 1)) (game_loop))

    )

)

(game_loop)
