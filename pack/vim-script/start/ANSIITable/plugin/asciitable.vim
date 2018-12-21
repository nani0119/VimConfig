" =============================================================================
" ga and :asc are fine for getting the values of a character at a time but
" sometimes you need a little more.
" 
" Splits the window and creates a table of Ascii values and characters.  
" =============================================================================


"*****************************************************************
"* Asciitable commands
"*****************************************************************
:command! -nargs=0 Asctable  call Asciitable()


nmap <Leader>a :cal Asciitable()<CR>


function! s:BldWindow(disptext)
  " make window
  let vheight = 19
  let vwinnum=bufnr('__ASCIITable')
  if getbufvar(vwinnum, 'ASCIITable')=='ASCIITable'
    let vwinnum=bufwinnr(vwinnum)
  else
    let vwinnum=-1
  endif

  if vwinnum >= 0
    " if already exist
    if vwinnum != bufwinnr('%')
      exe "normal \<c-w>".vwinnum."w"
    endif
    setlocal modifiable
    silent %d _
  else
    execute vheight.'split __ASCIITable'

    setlocal noswapfile
    setlocal buftype=nowrite
    setlocal bufhidden=delete
    setlocal nonumber
    setlocal nowrap
    setlocal norightleft
    setlocal foldcolumn=0
    setlocal modifiable
    let b:ASCIITable='ASCIITable'
  endif

  silent put! =a:disptext
endfunc

function! Asciitable(...)

   let outbuf =          "        Oct   Dec   Hex   Char                        Oct   Dec   Hex   Char      \n "
   let outbuf = outbuf . "       ────────────────────────────────────────────────────────────────────────  \n "
   let outbuf = outbuf . "       000   0     00    NUL '\\0'(null character)    100   64    40    @         \n "
   let outbuf = outbuf . "       001   1     01    SOH (start of heading)      101   65    41    A         \n "
   let outbuf = outbuf . "       002   2     02    STX (start of text)         102   66    42    B         \n "
   let outbuf = outbuf . "       003   3     03    ETX (end of text)           103   67    43    C         \n "
   let outbuf = outbuf . "       004   4     04    EOT (end of transmission)   104   68    44    D         \n "
   let outbuf = outbuf . "       005   5     05    ENQ (enquiry)               105   69    45    E         \n "
   let outbuf = outbuf . "       006   6     06    ACK (acknowledge)           106   70    46    F         \n "
   let outbuf = outbuf . "       007   7     07    BEL '\\a' (bell)             107   71    47    G        \n "
   let outbuf = outbuf . "       010   8     08    BS  '\\b' (backspace)        110   72    48    H        \n "
   let outbuf = outbuf . "       011   9     09    HT  '\\t' (horizontal tab)   111   73    49    I        \n "
   let outbuf = outbuf . "       012   10    0A    LF  '\\n' (new line)         112   74    4A    J        \n "
   let outbuf = outbuf . "       013   11    0B    VT  '\\v' (vertical tab)     113   75    4B    K        \n "
   let outbuf = outbuf . "       014   12    0C    FF  '\\f' (form feed)        114   76    4C    L        \n "
   let outbuf = outbuf . "       015   13    0D    CR  '\\r' (carriage ret)     115   77    4D    M        \n "
   let outbuf = outbuf . "       016   14    0E    SO  (shift out)             116   78    4E    N         \n "
   let outbuf = outbuf . "       017   15    0F    SI  (shift in)              117   79    4F    O         \n "
   let outbuf = outbuf . "       020   16    10    DLE (data link escape)      120   80    50    P         \n "
   let outbuf = outbuf . "       021   17    11    DC1 (device control 1)      121   81    51    Q         \n "
   let outbuf = outbuf . "       022   18    12    DC2 (device control 2)      122   82    52    R         \n "
   let outbuf = outbuf . "       023   19    13    DC3 (device control 3)      123   83    53    S         \n "
   let outbuf = outbuf . "       024   20    14    DC4 (device control 4)      124   84    54    T         \n "
   let outbuf = outbuf . "       025   21    15    NAK (negative ack.)         125   85    55    U         \n "
   let outbuf = outbuf . "       026   22    16    SYN (synchronous idle)      126   86    56    V         \n "
   let outbuf = outbuf . "       027   23    17    ETB (end of trans. blk)     127   87    57    W         \n "
   let outbuf = outbuf . "       030   24    18    CAN (cancel)                130   88    58    X         \n "
   let outbuf = outbuf . "       031   25    19    EM  (end of medium)         131   89    59    Y         \n "
   let outbuf = outbuf . "       032   26    1A    SUB (substitute)            132   90    5A    Z         \n "
   let outbuf = outbuf . "       033   27    1B    ESC (escape)                133   91    5B    [         \n "
   let outbuf = outbuf . "       034   28    1C    FS  (file separator)        134   92    5C    \\        \n "
   let outbuf = outbuf . "       035   29    1D    GS  (group separator)       135   93    5D    ]         \n "
   let outbuf = outbuf . "       036   30    1E    RS  (record separator)      136   94    5E    ^         \n "
   let outbuf = outbuf . "       037   31    1F    US  (unit separator)        137   95    5F    _         \n "
   let outbuf = outbuf . "       040   32    20    SPACE                       140   96    60    `         \n "
   let outbuf = outbuf . "       041   33    21    !                           141   97    61    a         \n "
   let outbuf = outbuf . "       042   34    22    \"                           142   98    62    b         \n "
   let outbuf = outbuf . "       043   35    23    #                           143   99    63    c         \n "
   let outbuf = outbuf . "       044   36    24    $                           144   100   64    d         \n "
   let outbuf = outbuf . "       045   37    25    %                           145   101   65    e         \n "
   let outbuf = outbuf . "       046   38    26    &                           146   102   66    f         \n "
   let outbuf = outbuf . "       047   39    27    '                           147   103   67    g         \n "
   let outbuf = outbuf . "       050   40    28    (                           150   104   68    h         \n "
   let outbuf = outbuf . "       051   41    29    )                           151   105   69    i         \n "
   let outbuf = outbuf . "       052   42    2A    *                           152   106   6A    j         \n "
   let outbuf = outbuf . "       053   43    2B    +                           153   107   6B    k         \n "
   let outbuf = outbuf . "       054   44    2C    ,                           154   108   6C    l         \n "
   let outbuf = outbuf . "       055   45    2D    -                           155   109   6D    m         \n "
   let outbuf = outbuf . "       056   46    2E    .                           156   110   6E    n         \n "
   let outbuf = outbuf . "       057   47    2F    /                           157   111   6F    o         \n "
   let outbuf = outbuf . "       060   48    30    0                           160   112   70    p         \n "
   let outbuf = outbuf . "       061   49    31    1                           161   113   71    q         \n "
   let outbuf = outbuf . "       062   50    32    2                           162   114   72    r         \n "
   let outbuf = outbuf . "       063   51    33    3                           163   115   73    s         \n "
   let outbuf = outbuf . "       064   52    34    4                           164   116   74    t         \n "
   let outbuf = outbuf . "       065   53    35    5                           165   117   75    u         \n "
   let outbuf = outbuf . "       066   54    36    6                           166   118   76    v         \n "
   let outbuf = outbuf . "       067   55    37    7                           167   119   77    w         \n "
   let outbuf = outbuf . "       070   56    38    8                           170   120   78    x         \n "
   let outbuf = outbuf . "       071   57    39    9                           171   121   79    y         \n "
   let outbuf = outbuf . "       072   58    3A    :                           172   122   7A    z         \n "
   let outbuf = outbuf . "       073   59    3B    ;                           173   123   7B    {         \n "
   let outbuf = outbuf . "       074   60    3C    <                           174   124   7C    |         \n "
   let outbuf = outbuf . "       075   61    3D    =                           175   125   7D    }         \n "
   let outbuf = outbuf . "       076   62    3E    >                           176   126   7E    ~         \n "
   let outbuf = outbuf . "       077   63    3F    ?                           177   127   7F    DEL       \n "

   call s:BldWindow(outbuf)
   exe "normal gg"
endfunction
