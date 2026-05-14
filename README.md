# Pseudo Lib: Objects, Graphics & Libraries

![Banner de Pseudo Lib](media/PseudoLib_banner_.png)

### Acerca del Proyecto
PseudoLib es una infraestructura integral de pseudo-código desarrollada para PSeInt. Su objetivo es romper las limitaciones del entorno educativo, emulando la arquitectura y robustez de una librería estándar profesional (inspirada Java, C y JavaScript).

>Disclaimer: Este proyecto no tiene un fin pedagógico básico. Es una implementación técnica de naturaleza experimental. Para su correcta integración y aprovechamiento, se requiere comprensión previa de ciertos conceptos de programación.

> Spirtal Demostracion
![demoSpiral](media/Spiral.png)
> poder de dibujo con TUI o Canvas
![demoTUI](media/TUI_Example.png)

---

## Estructura del Proyecto
```
//________________________________________________________________________
//  CODE  ::        NAME MODULE         ::         USE           :: STATE
//------------------------------------------------------------------------
//  #INP  ::  INPUT                     ::  user_input_          ::  [+]
//  #STR  ::  STRING                    ::  string_              ::  [+]
//  #ARR  ::  ARRAY                     ::  array_               ::  [p]
//  #PRN  ::  PRINTERS                  ::  print_ : prinln_     ::  [p]
//  #SLP  ::  SLEEP                     ::  sleep_               ::  [+]
//  #LOG  ::  LOGS                      ::  log_                 ::  [+]
//  #TST  ::  TEST                      ::  test_                ::  [+]
//  #INT  ::  INT                       ::  int_                 ::  [+]
//  #BST  ::  BINARY_STRING             ::  binarystring_        ::  [+]
//  #MTH  ::  MATH                      ::  math_                ::  [+]
//  #BLN  ::  BOOLEAN                   ::  boolean_             ::  [+]
//  #CDT  ::  CONDITIONS                ::  if_ : condition_     ::  [+]
//  #COL  ::  COLOR                     ::  COLOR_               ::  [+]
//  #VAL  ::  VALUE                     ::  value_               ::  [+]
//  #CLL  ::  COLLECTION                ::  collection_          ::  [+]
//  #MDA  ::  MANAGET_DATA              ::  managerData_         ::  [+]
//  #LCL  ::  LINEAR_COLLECTION         ::  linearCollection_    ::  [+]
//  #DEQ  ::  DEQUE                     ::  util_deque_          ::  [+]
//  #QUE  ::  QUEUE                     ::  util_queue_          ::  [+]
//  #STA  ::  STACK                     ::  util_stack_          ::  [+]
//  #TMP  ::  TEMPORAL\CHRONO_UNIT      ::  localDate_time_      ::  [+]
//  #LDA  ::  LOCALDATE                 ::  localDate_           ::  [+]
//  #LTI  ::  LOCALTIME                 ::  localTime_           ::  [+]
//  #LDT  ::  LOCALDATE_TIME            ::  localDate_time_      ::  [+]
//  #DUR  ::  DURATION                  ::  duration_            ::  [+]
//  #PER  ::  PERIOD                    ::  period_              ::  [+]
//  #LIS  ::  LIST                      ::  util_List_           ::  [+]
//  #CST  ::  COLLECTION_STORAGE        ::  collectionStorage_   ::  [+]
//  #CCE  ::  CELLS_COLLECTION          ::  cellsCollection_     ::  [+]
//  #CCD  ::  CELLS_COLLECTION_DYNAMIC  ::  CellsCol..._dynamic_ ::  [+]
//  #CCS  ::  CELLS_COLLECTION_SETTER   ::  CellsCol..._setter_  ::  [+]
//  #SET  ::  SET                       ::  util_set_            ::  [+]
//  #CDC  ::  DUAL_CELLS_COLLECTION     ::  collectionDualCells_ ::  [+]
//  #CSC  ::  STORAGE_CELLS_COLLECTION  ::  collStorageCells_    ::  [+]
//  #MAP  ::  MAP                       ::  util_map_            ::  [+]
//  #OBJ  ::  OBJECTS                   ::  object_              ::  [+]
//  #CAN  ::  CANVAS                    ::  canvas_              ::  [+]
//  #SPR  ::  SPRITE                    ::  sprite_              ::  [+]
//  #TUI  ::  TUI                       ::  tui_                 ::  [+]
//  #TCO  ::  TCOMPONENT                ::  tComponent_          ::  [+]
//  #VEC  ::  VEC                       ::  vec_                 ::  [x]
//  #ASC  ::  ASCCI/HASH                ::  ascii_               ::  [+]
//------------------------------------------------------------------------
//:::: LINES_CODE: ~9600 ::: 41 MODULES ::: ( Pseint / version.2023 ) ::::
//________________________________________________________________________
//:::::::::::::::::::::::::: ( STATE MEANING ) :::::::::::::::::::::::::::
//------------------------------------------------------------------------
//  [+]: Stable                                                        
//  [D]: Current Development (Unusable temporaly)                      
//  [p]: stable (Pending additions)                                    
//  [x]: Unusable / undeveloped state                                  
//________________________________________________________________________
```
---

## Próximamente / En desarrollo

- Algoritmos de ordenamiento de arreglos compatibles con la estructura String 
- Vectores Cruz y Punto a partir de Cadenas y arreglos
- Regex(Pattern/Matcher)
- QR

> la mayoria de cosas complejas se manejan mediante asignaciones y texto
> es simulacion con el objetivo de programar cosas complejas con flexibilidad 
