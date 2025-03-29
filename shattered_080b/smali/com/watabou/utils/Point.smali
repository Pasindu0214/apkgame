.class public Lcom/watabou/utils/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/watabou/utils/Point;->x:I

    .line 4
    iput p2, p0, Lcom/watabou/utils/Point;->y:I

    return-void
.end method

.method public constructor <init>(Lcom/watabou/utils/Point;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iput v0, p0, Lcom/watabou/utils/Point;->x:I

    .line 7
    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iput p1, p0, Lcom/watabou/utils/Point;->y:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/utils/Point;

    invoke-direct {v0, p0}, Lcom/watabou/utils/Point;-><init>(Lcom/watabou/utils/Point;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/watabou/utils/Point;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/watabou/utils/Point;

    .line 3
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget v2, p0, Lcom/watabou/utils/Point;->x:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iget v0, p0, Lcom/watabou/utils/Point;->y:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
