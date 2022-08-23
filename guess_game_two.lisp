(defvar word "tux")

(defvar lives 3)

(defvar points 0)

(defun game_loop () "Idk, game loop?"

  (defvar user_guess)

  (format t "You have 3 lives. Be careful. Also, you need to score 3 points by guessing the correct letters. ~&")

  (format t "Lives: ~a ~&" lives)
  (format t "Points: ~a ~&" points)

  (print "Guess: ")

  (setf user_guess (make-array '(0) :element-type 'base-char :adjustable t)) ;; clearing user_guess (flushing stdin)

  (setf user_guess (read-line)) ;; taking user_input

  (cond

    ((= 0 lives) (print "Eh.. game over.."))
    ((= 3 points) (print "YAY! YOU WON!"))

    ((search user_guess word) (print "Guessed one letter.") (setf points (+ 1 points)) (game_loop))
    ((not(search user_guess word)) (print "Try again.") (setf lives (- lives 1)) (game_loop))

    )

)

(game_loop)
