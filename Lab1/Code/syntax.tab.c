/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "./syntax.y" /* yacc.c:339  */

	#include <stdio.h>
	#include <stdarg.h>
	#include "TreeNode.h"
	int yylex();	
//	void yyerror(const char *msg);
	void yyerror(char *pstr, ...);
	void syntaxError(const char *msg, int lineno);
	struct TreeNode *root = NULL;
	extern int nError;
	extern int newLine;

#line 79 "./syntax.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "syntax.tab.h".  */
#ifndef YY_YY_SYNTAX_TAB_H_INCLUDED
# define YY_YY_SYNTAX_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INT = 258,
    FLOAT = 259,
    ID = 260,
    SEMI = 261,
    COMMA = 262,
    ASSIGNOP = 263,
    RELOP = 264,
    PLUS = 265,
    MINUS = 266,
    STAR = 267,
    DIV = 268,
    AND = 269,
    OR = 270,
    DOT = 271,
    NOT = 272,
    LP = 273,
    RP = 274,
    LB = 275,
    RB = 276,
    LC = 277,
    RC = 278,
    STRUCT = 279,
    RETURN = 280,
    IF = 281,
    ELSE = 282,
    WHILE = 283,
    UNDEF = 284,
    TYPE = 285,
    LOWER_THAN_ELSE = 286
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 16 "./syntax.y" /* yacc.c:355  */

	int nType;
	struct TreeNode *pNode;

#line 156 "./syntax.tab.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif

/* Location type.  */
#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE YYLTYPE;
struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
};
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


extern YYSTYPE yylval;
extern YYLTYPE yylloc;
int yyparse (void);

#endif /* !YY_YY_SYNTAX_TAB_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 187 "./syntax.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
             && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
  YYLTYPE yyls_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE) + sizeof (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  13
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   240

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  32
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  66
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  124

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   286

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    61,    61,    68,    74,    78,    85,    91,    98,   103,
     108,   117,   122,   128,   137,   143,   148,   153,   157,   164,
     169,   177,   182,   190,   197,   202,   209,   215,   223,   232,
     238,   242,   248,   253,   260,   269,   280,   289,   296,   302,
     306,   313,   319,   324,   332,   337,   346,   353,   360,   367,
     374,   381,   388,   395,   402,   409,   415,   421,   429,   436,
     444,   451,   456,   461,   466,   471,   478
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "INT", "FLOAT", "ID", "SEMI", "COMMA",
  "ASSIGNOP", "RELOP", "PLUS", "MINUS", "STAR", "DIV", "AND", "OR", "DOT",
  "NOT", "LP", "RP", "LB", "RB", "LC", "RC", "STRUCT", "RETURN", "IF",
  "ELSE", "WHILE", "UNDEF", "TYPE", "LOWER_THAN_ELSE", "$accept",
  "Program", "ExtDefList", "ExtDef", "ExtDecList", "Specifier",
  "StructSpecifier", "OptTag", "Tag", "VarDec", "FunDec", "VarList",
  "ParamDec", "CompSt", "StmtList", "Stmt", "DefList", "Def", "DecList",
  "Dec", "Exp", "Args", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286
};
# endif

#define YYPACT_NINF -111

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-111)))

#define YYTABLE_NINF -20

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      13,    38,    52,  -111,    23,  -111,    13,     2,  -111,  -111,
      77,    17,  -111,  -111,  -111,    18,  -111,    59,    34,    47,
      49,    -8,    73,   199,  -111,    90,   116,    -8,  -111,  -111,
      90,    76,    -8,  -111,  -111,    90,    99,    89,  -111,  -111,
    -111,   110,    42,    32,    92,   125,  -111,  -111,   113,  -111,
      -8,  -111,  -111,  -111,   126,    45,    45,    45,    45,   128,
     140,  -111,   122,    42,    65,    45,   153,  -111,    90,  -111,
      86,   220,    35,   141,   100,    45,    45,  -111,  -111,   165,
    -111,    45,    45,    45,    45,    45,    45,    45,    45,   179,
      83,   180,  -111,  -111,  -111,   114,   166,  -111,  -111,   154,
     167,  -111,   180,   215,   220,   220,    35,    35,   204,   192,
    -111,   151,   127,    45,  -111,    42,    42,  -111,  -111,  -111,
     170,  -111,    42,  -111
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,    17,    11,     0,     2,     0,     0,    12,     8,
      16,     0,    14,     1,     3,     0,     6,     0,     9,     0,
       0,    39,     0,     0,     5,     0,     0,    39,     7,    15,
       0,     0,    39,    24,    23,     0,     0,    26,    19,    10,
      21,     0,    30,    44,     0,    42,    13,    38,    27,    22,
       0,    20,    62,    63,    61,     0,     0,     0,     0,     0,
       0,    32,     0,    30,     0,     0,     0,    40,     0,    25,
       0,    55,    56,     0,     0,     0,     0,    28,    29,     0,
      31,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    45,    41,    43,    58,    66,     0,    54,    33,     0,
       0,    37,    46,    49,    50,    51,    52,    53,    47,    48,
      60,     0,     0,     0,    57,     0,     0,    64,    59,    65,
      34,    36,     0,    35
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -111,  -111,   193,  -111,   173,    11,  -111,  -111,  -111,   -26,
    -111,   157,  -111,   190,   147,  -110,    75,  -111,   143,  -111,
     -55,   106
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     4,     5,     6,    17,    30,     8,    11,    12,    18,
      19,    36,    37,    61,    62,    63,    31,    32,    44,    45,
      64,    96
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int8 yytable[] =
{
      71,    72,    73,    74,    43,   120,   121,    15,    16,    48,
      91,     7,   123,    -4,     1,    95,     2,     7,    20,    22,
      99,   100,     3,    13,   -19,   -19,   102,   103,   104,   105,
     106,   107,   108,   109,    35,   112,    23,     2,   -19,    21,
      65,    25,    43,     3,     9,    52,    53,    54,    52,    53,
      54,    89,    26,    55,    26,    90,    55,    10,    95,    56,
      57,    35,    56,    57,    27,    24,    79,    58,    59,    27,
      60,    80,    29,    81,    82,    83,    84,    85,    86,    87,
      88,    89,   -18,   -18,   111,    90,    52,    53,    54,    52,
      53,    54,    33,    66,    55,    38,    50,    55,    67,    46,
      56,    57,    42,    56,    57,    94,    98,    47,    81,    82,
      83,    84,    85,    86,    87,    88,    89,    40,    49,    41,
      90,   113,    81,    82,    83,    84,    85,    86,    87,    88,
      89,    51,    68,    26,    90,    81,    82,    83,    84,    85,
      86,    87,    88,    89,    70,    77,    75,    90,   118,    81,
      82,    83,    84,    85,    86,    87,    88,    89,    76,    92,
      97,    90,    81,    82,    83,    84,    85,    86,    87,    88,
      89,   101,   117,   115,    90,    81,    82,    83,    84,    85,
      86,    87,    88,    89,   110,   114,   116,    90,    81,    82,
      83,    84,    85,    86,    87,    88,    89,   122,    39,    14,
      90,    82,    83,    84,    85,    86,    87,    69,    89,    28,
      78,    93,    90,    82,    83,    84,    85,    86,    34,   119,
      89,     0,     0,     2,    90,    83,    84,    85,    86,     3,
       0,    89,    85,    86,     0,    90,    89,     0,     0,     0,
      90
};

static const yytype_int8 yycheck[] =
{
      55,    56,    57,    58,    30,   115,   116,     5,     6,    35,
      65,     0,   122,     0,     1,    70,    24,     6,     1,     1,
      75,    76,    30,     0,     6,     7,    81,    82,    83,    84,
      85,    86,    87,    88,    23,    90,    18,    24,    20,    22,
       8,     7,    68,    30,     6,     3,     4,     5,     3,     4,
       5,    16,    20,    11,    20,    20,    11,     5,   113,    17,
      18,    50,    17,    18,    22,     6,     1,    25,    26,    22,
      28,     6,    23,     8,     9,    10,    11,    12,    13,    14,
      15,    16,     5,     6,     1,    20,     3,     4,     5,     3,
       4,     5,    19,     1,    11,     5,     7,    11,     6,    23,
      17,    18,    27,    17,    18,    19,     6,    32,     8,     9,
      10,    11,    12,    13,    14,    15,    16,     1,    19,     3,
      20,     7,     8,     9,    10,    11,    12,    13,    14,    15,
      16,    21,     7,    20,    20,     8,     9,    10,    11,    12,
      13,    14,    15,    16,    18,    23,    18,    20,    21,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    18,     6,
      19,    20,     8,     9,    10,    11,    12,    13,    14,    15,
      16,     6,    21,    19,    20,     8,     9,    10,    11,    12,
      13,    14,    15,    16,     5,    19,    19,    20,     8,     9,
      10,    11,    12,    13,    14,    15,    16,    27,    25,     6,
      20,     9,    10,    11,    12,    13,    14,    50,    16,    19,
      63,    68,    20,     9,    10,    11,    12,    13,    19,   113,
      16,    -1,    -1,    24,    20,    10,    11,    12,    13,    30,
      -1,    16,    12,    13,    -1,    20,    16,    -1,    -1,    -1,
      20
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     1,    24,    30,    33,    34,    35,    37,    38,     6,
       5,    39,    40,     0,    34,     5,     6,    36,    41,    42,
       1,    22,     1,    18,     6,     7,    20,    22,    45,    23,
      37,    48,    49,    19,    19,    37,    43,    44,     5,    36,
       1,     3,    48,    41,    50,    51,    23,    48,    41,    19,
       7,    21,     3,     4,     5,    11,    17,    18,    25,    26,
      28,    45,    46,    47,    52,     8,     1,     6,     7,    43,
      18,    52,    52,    52,    52,    18,    18,    23,    46,     1,
       6,     8,     9,    10,    11,    12,    13,    14,    15,    16,
      20,    52,     6,    50,    19,    52,    53,    19,     6,    52,
      52,     6,    52,    52,    52,    52,    52,    52,    52,    52,
       5,     1,    52,     7,    19,    19,    19,    21,    21,    53,
      47,    47,    27,    47
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    32,    33,    34,    34,    35,    35,    35,    35,    36,
      36,    37,    37,    38,    38,    38,    39,    39,    40,    41,
      41,    41,    42,    42,    42,    43,    43,    44,    45,    46,
      46,    47,    47,    47,    47,    47,    47,    47,    48,    48,
      49,    49,    50,    50,    51,    51,    52,    52,    52,    52,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      52,    52,    52,    52,    52,    53,    53
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     0,     3,     2,     3,     2,     1,
       3,     1,     1,     5,     2,     4,     1,     0,     1,     1,
       4,     3,     4,     3,     3,     3,     1,     2,     4,     2,
       0,     2,     1,     3,     5,     7,     5,     3,     2,     0,
       3,     4,     1,     3,     1,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     2,     2,     4,     3,     4,
       3,     1,     1,     1,     4,     3,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).first_line   = (Current).last_line   =              \
            YYRHSLOC (Rhs, 0).last_line;                                \
          (Current).first_column = (Current).last_column =              \
            YYRHSLOC (Rhs, 0).last_column;                              \
        }                                                               \
    while (0)
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K])


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL

/* Print *YYLOCP on YYO.  Private, do not rely on its existence. */

YY_ATTRIBUTE_UNUSED
static unsigned
yy_location_print_ (FILE *yyo, YYLTYPE const * const yylocp)
{
  unsigned res = 0;
  int end_col = 0 != yylocp->last_column ? yylocp->last_column - 1 : 0;
  if (0 <= yylocp->first_line)
    {
      res += YYFPRINTF (yyo, "%d", yylocp->first_line);
      if (0 <= yylocp->first_column)
        res += YYFPRINTF (yyo, ".%d", yylocp->first_column);
    }
  if (0 <= yylocp->last_line)
    {
      if (yylocp->first_line < yylocp->last_line)
        {
          res += YYFPRINTF (yyo, "-%d", yylocp->last_line);
          if (0 <= end_col)
            res += YYFPRINTF (yyo, ".%d", end_col);
        }
      else if (0 <= end_col && yylocp->first_column < end_col)
        res += YYFPRINTF (yyo, "-%d", end_col);
    }
  return res;
 }

#  define YY_LOCATION_PRINT(File, Loc)          \
  yy_location_print_ (File, &(Loc))

# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value, Location); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  YYUSE (yylocationp);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  YY_LOCATION_PRINT (yyoutput, *yylocationp);
  YYFPRINTF (yyoutput, ": ");
  yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                       , &(yylsp[(yyi + 1) - (yynrhs)])                       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, yylsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
{
  YYUSE (yyvaluep);
  YYUSE (yylocationp);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Location data for the lookahead symbol.  */
YYLTYPE yylloc
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  = { 1, 1, 1, 1 }
# endif
;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.
       'yyls': related to locations.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    /* The location stack.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls;
    YYLTYPE *yylsp;

    /* The locations where the error started and ended.  */
    YYLTYPE yyerror_range[3];

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yylsp = yyls = yylsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  yylsp[0] = yylloc;
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;
        YYLTYPE *yyls1 = yyls;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yyls1, yysize * sizeof (*yylsp),
                    &yystacksize);

        yyls = yyls1;
        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
        YYSTACK_RELOCATE (yyls_alloc, yyls);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END
  *++yylsp = yylloc;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location.  */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 61 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Program", (yyloc).first_line); 
		(yyval.pNode)->nType = NonTerminal;
		addChild((yyval.pNode), (yyvsp[0].pNode));
		root = (yyval.pNode);
	}
#line 1470 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 3:
#line 68 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ExtDefList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1481 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 74 "./syntax.y" /* yacc.c:1646  */
    {//null
		(yyval.pNode) = NULL;
	}
#line 1489 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 78 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ExtDef", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1501 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 85 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ExtDef", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1512 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 91 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ExtDef", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1524 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 98 "./syntax.y" /* yacc.c:1646  */
    {//error recovery
		nError ++;
		yyerror("Missing \";\"");
	}
#line 1533 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 103 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ExtDecList", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1543 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 108 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ExtDecList", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1555 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 117 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Specifier", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1565 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 122 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Specifier", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1575 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 13:
#line 128 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("StructSpecifier", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[-4].pNode));
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1589 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 137 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("StructSpecifier", (yyloc).first_line); 
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1600 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 143 "./syntax.y" /* yacc.c:1646  */
    {//error handle
		nError ++;	
		yyerror("Missing \"{\"");
	}
#line 1609 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 148 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("OptTag", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1619 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 153 "./syntax.y" /* yacc.c:1646  */
    {//null
		(yyval.pNode) = NULL;
	}
#line 1627 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 157 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Tag", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1637 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 164 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("VarDec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1647 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 169 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("VarDec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1660 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 177 "./syntax.y" /* yacc.c:1646  */
    {//error handle	
		nError ++;	
		yyerror("Missing \"]\"");
	}
#line 1669 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 182 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("FunDec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1682 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 190 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("FunDec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1694 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 197 "./syntax.y" /* yacc.c:1646  */
    {//error handle
		nError ++;	
		yyerror("Missing \")\"");
	}
#line 1703 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 202 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("VarList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1715 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 209 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("VarList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1725 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 215 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("ParamDec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1736 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 223 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("CompSt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1749 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 232 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("StmtList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1760 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 238 "./syntax.y" /* yacc.c:1646  */
    {//null
		(yyval.pNode) = NULL;
	}
#line 1768 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 242 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Stmt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1779 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 248 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Stmt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1789 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 253 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Stmt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1801 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 260 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Stmt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-4].pNode));
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1815 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 269 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Stmt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-6].pNode));
		addChild((yyval.pNode), (yyvsp[-5].pNode));
		addChild((yyval.pNode), (yyvsp[-4].pNode));
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1831 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 280 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Stmt", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-4].pNode));
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1845 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 289 "./syntax.y" /* yacc.c:1646  */
    {//error handle
		nError ++;
		yyerror("Missing \";\"");
		//syntaxError("Missing \";\"\n", @1.first_line);		
	}
#line 1855 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 296 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("DefList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1866 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 302 "./syntax.y" /* yacc.c:1646  */
    {//null
		(yyval.pNode) = NULL;
	}
#line 1874 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 306 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Def", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1886 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 313 "./syntax.y" /* yacc.c:1646  */
    {//error handle
		nError ++;
		yyerror("Missing \";\"");
		//syntaxError("Missing \";\"\n", @1.first_line);		
	}
#line 1896 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 319 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("DecList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1906 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 324 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("DecList", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1918 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 332 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Dec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1928 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 337 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Dec", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1940 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 346 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1952 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 353 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1964 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 360 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1976 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 367 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 1988 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 374 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2000 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 381 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2012 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 388 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2024 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 395 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2036 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 402 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2048 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 409 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2059 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 415 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2070 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 421 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2083 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 429 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2095 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 436 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-3].pNode));
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2108 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 444 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2120 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 451 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2130 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 456 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2140 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 461 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Exp", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2150 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 466 "./syntax.y" /* yacc.c:1646  */
    {//error handle 
		nError ++;
		yyerror("Missing \"]\"");
	}
#line 2159 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 471 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Args", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[-2].pNode));
		addChild((yyval.pNode), (yyvsp[-1].pNode));
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2171 "./syntax.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 478 "./syntax.y" /* yacc.c:1646  */
    {
		(yyval.pNode) = createNode("Args", (yyloc).first_line);
		addChild((yyval.pNode), (yyvsp[0].pNode));
		(yyval.pNode)->nType = NonTerminal;
	}
#line 2181 "./syntax.tab.c" /* yacc.c:1646  */
    break;


#line 2185 "./syntax.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }

  yyerror_range[1] = yylloc;

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval, &yylloc);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  yyerror_range[1] = yylsp[1-yylen];
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;

      yyerror_range[1] = *yylsp;
      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp, yylsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  yyerror_range[2] = yylloc;
  /* Using YYLLOC is tempting, but would change the location of
     the lookahead.  YYLOC is available though.  */
  YYLLOC_DEFAULT (yyloc, yyerror_range, 2);
  *++yylsp = yyloc;

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval, &yylloc);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp, yylsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 485 "./syntax.y" /* yacc.c:1906  */


#include "lex.yy.c"


void syntaxError(const char *msg, int lineno)
{
	printf("Error type B at line %d: %s\n",
			lineno, msg);
}

//let yyerror do nothing
/*
void yyerror(const char *msg)
{
}
*/

void yyerror(char *pstr, ...)
{
	//if(newLine) {
		//printf("Error type B at Line %d: ", yylineno);
		fprintf(stderr, "Error type B at Line %d: ", yylineno);
		va_list varList;
		va_start(varList, pstr);
		vprintf(pstr, varList);
		va_end(varList);
		printf(".\n");
		newLine = 0;
	//}
}
