; car - first item of list (address)
; cdr - remaining items of list (data)
; cons - append item to list

(define (make-change change denoms)     ; params: change, denominations
    (cond   ; if-else conditional

        ; if change is 0, return empty list
        ((= change 0)
            '()
        )

        ; if denoms is empty, return false
        ((empty? denoms)
            false
        )

        ; if change < first element of denoms list, recurse function with rest of denoms list
        ((< change (car denoms))
            (make-change change (cdr denoms))
        )

        ; append first element of denoms list to recurse function of full list
        (else
            (cons (car denoms) (make-change (- change (car denoms)) denoms)
            )
        )
    )
)