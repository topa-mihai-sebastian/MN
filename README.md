# MN

# TASK 1

## `estimate_gaussian`

- Transpun matricea dată ca parametru și inițializez variabilele de returnare.
- Am transpus matricea din cauza unei neînțelegeri a enunțului. Inițial credeam că sunt vectori coloane, dar de fapt erau vectori linii.
- În prima buclă `for`, funcția calculează media fiecărei linii din `X`.
- În al doilea ciclu `for`, funcția calculează matricea de covarianță.

## `multivariate_gaussian`

- Creez o matrice auxiliară (`invs`) în care stochez inversa pentru a nu calcula inversa de fiecare dată în buclă.
- Calculez coeficientul conform formulei din enunț.
- Creez un alt auxiliar în care se stochează acea diferență pentru o claritate mai mare a codului.

## `optimal_threshold`

- Calculez mărimea pasului (`(max - min) / 1000`, deoarece vreau 1000 de pași).
- Actualizez `predictions` la fiecare iterație (verific dacă este mai mic decât epsilon).
- Apoi mă folosesc de 3 auxiliare (`tp`, `fp`, `fn`) și se face o comparație element cu element.
- Aplic formula din enunț.

# TASK 2

## `build_kernel`

- Stochez în `n` câte linii are matricea și inițializez matricea de retur cu matricea nulă.
- Aplic funcția `f` dată ca parametru: calculez fiecare element al matricii `K` ca rezultatul returnat de funcția `f`.
- Funcția `f` primește ca parametru linia `i` și `j` + un parametru `f_param`.

## `cholesky`

- M-am folosit inițial de funcția din lab, dar a trebuit să o modific pentru că primeam timeout la un alt exercițiu.
- Stochez în `n` mărimea lui `A`.
- Calculez un scalar (`s`) care este diferența dintre elementul de pe diagonala principală `A(j,j)` și produsul scalar al primelor `j-1` elemente de pe rândul `j` din `L`. Pe diagonala principală se aplică `sqrt` din scalarul `s`.
- Apoi calculez elementele de pe coloana `j` a matricei `L`, începând de la rândul `j+1` până la finalul matricei.

## `conjugate_gradient`

- M-am folosit de algoritmul prezentat în PDF-ul temei.

## `eval_value`

- Bucla continuă până se atinge numărul de linii din matricea `X`.
- Calculez un auxiliar aplicând `f` la vectorul `x` (x mic) și linia `i` din matricea `X`.
- Actualizez `pred` adăugând produsul dintre `a(i)` și `aux`.

## `gaussian_kernel`

- Aplic formula din enunț.

## `get_lower_inverse`

- Inițializez matricea de retur cu matricea unitate.
- Actualizez linia `i` al matricei `P` prin scăderea produsului dintre linia `j` al matricei `P` și elementul `L(i, j)`.
- Apoi împart linia `i` al matricei `P` la elementul de pe diagonala principală (`i, i`) al matricei `L`.
- `P` este inversa matricei inferioare `L`.
- Algoritmul funcționează dacă `L(i,i) != 0`.

## `get_prediction_params`

- Adun matricea `K` cu matricea unitate înmulțită cu `lambda`, iar rezultatul îl stochez în `aux`.
- Apelez funcția `cholesky` implementată pentru acest `aux`.
- Rezolv sistemul de ecuații liniare `aux * a = y`.
- `L \ y` rezolvă sistemul de ecuații liniare `L * z = y`. Acesta este echivalent cu `inv(L) * y`.
- `L' \ (L \ y)` rezolvă sistemul de ecuații liniare `L' * a = z`, unde `z` este rezultatul calculat anterior.

## `get_prediction_params_iterative`

- `a0` este un vector de 0 de dimensiunea lui `K`.
- Am aplicat metoda gradientului conjugat pentru a rezolva sistemul de ecuații `((K + lambda * I) * a = y)`, începând cu vectorul inițial `a0` și continuând până când diferența dintre două iterații consecutive este < 1e-7 (precizie mare) sau numărul de iterații depășește 10000.

## `split_dataset`

- `X_train` și `y_train` conțin primele `k` linii din `X` și `y`.
- `X_pred` și `y_pred` conțin restul liniilor din `X` și `y`.

# TASK 3

## `k_secv`

- Funcția parcurge șirul `A` de la început până la `length(A) - k`, generând un subșir `aux` de lungime `k` pentru fiecare poziție.
- Apoi, fiecare subșir `aux` este transformat într-un șir cu elementele separate de un spațiu folosind funcția `strjoin`.
- Transpun `B` pentru a obține linii de șiruri.

## `k_secv_idx`

- Parcurge fiecare element din `distinct_k_sec`. Dacă elementul este deja în dicționar, adaugă indexul curent la lista de valori pentru acea cheie.
- Dacă elementul nu este încă în dicționar, adaugă indexul curent ca valoare pentru acel element.

## `word_idx`

- Pune fiecare cuvânt unic din `distinct_wds` în dicționar la un index unic.
