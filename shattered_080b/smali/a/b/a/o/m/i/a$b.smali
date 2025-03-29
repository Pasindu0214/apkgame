.class public La/b/a/o/m/i/a$b;
.super Ljava/lang/Object;
.source "FreeTypeFontGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:Z

.field public a:I

.field public b:Z

.field public c:La/b/a/o/m/i/a$c;

.field public d:La/b/a/o/a;

.field public e:F

.field public f:I

.field public g:F

.field public h:La/b/a/o/a;

.field public i:Z

.field public j:F

.field public k:I

.field public l:I

.field public m:La/b/a/o/a;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:La/b/a/o/m/e;

.field public w:Z

.field public x:Z

.field public y:La/b/a/o/i$a;

.field public z:La/b/a/o/i$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, La/b/a/o/m/i/a$b;->a:I

    .line 3
    sget-object v0, La/b/a/o/m/i/a$c;->f:La/b/a/o/m/i/a$c;

    iput-object v0, p0, La/b/a/o/m/i/a$b;->c:La/b/a/o/m/i/a$c;

    .line 4
    sget-object v0, La/b/a/o/a;->e:La/b/a/o/a;

    iput-object v0, p0, La/b/a/o/m/i/a$b;->d:La/b/a/o/a;

    const v0, 0x3fe66666    # 1.8f

    .line 5
    iput v0, p0, La/b/a/o/m/i/a$b;->e:F

    const/4 v1, 0x2

    .line 6
    iput v1, p0, La/b/a/o/m/i/a$b;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, La/b/a/o/m/i/a$b;->g:F

    .line 8
    sget-object v2, La/b/a/o/a;->i:La/b/a/o/a;

    iput-object v2, p0, La/b/a/o/m/i/a$b;->h:La/b/a/o/a;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, La/b/a/o/m/i/a$b;->i:Z

    .line 10
    iput v0, p0, La/b/a/o/m/i/a$b;->j:F

    .line 11
    iput v2, p0, La/b/a/o/m/i/a$b;->k:I

    .line 12
    iput v2, p0, La/b/a/o/m/i/a$b;->l:I

    .line 13
    new-instance v0, La/b/a/o/a;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v3}, La/b/a/o/a;-><init>(FFFF)V

    iput-object v0, p0, La/b/a/o/m/i/a$b;->m:La/b/a/o/a;

    const-string v0, "\u0000ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!`?\'.,;:()[]{}<>|/@\\^$\u20ac-%+=#_&~*\u007f\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f\u00a0\u00a1\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a8\u00a9\u00aa\u00ab\u00ac\u00ad\u00ae\u00af\u00b0\u00b1\u00b2\u00b3\u00b4\u00b5\u00b6\u00b7\u00b8\u00b9\u00ba\u00bb\u00bc\u00bd\u00be\u00bf\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\u00db\u00dc\u00dd\u00de\u00df\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\u00fb\u00fc\u00fd\u00fe\u00ff"

    .line 14
    iput-object v0, p0, La/b/a/o/m/i/a$b;->t:Ljava/lang/String;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, La/b/a/o/m/i/a$b;->u:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, La/b/a/o/m/i/a$b;->v:La/b/a/o/m/e;

    .line 17
    iput-boolean v2, p0, La/b/a/o/m/i/a$b;->w:Z

    .line 18
    iput-boolean v2, p0, La/b/a/o/m/i/a$b;->x:Z

    .line 19
    sget-object v0, La/b/a/o/i$a;->b:La/b/a/o/i$a;

    iput-object v0, p0, La/b/a/o/m/i/a$b;->y:La/b/a/o/i$a;

    .line 20
    iput-object v0, p0, La/b/a/o/m/i/a$b;->z:La/b/a/o/i$a;

    return-void
.end method
