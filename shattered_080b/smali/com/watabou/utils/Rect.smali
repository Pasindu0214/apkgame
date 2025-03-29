.class public Lcom/watabou/utils/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/watabou/utils/Rect;->left:I

    .line 4
    iput p2, p0, Lcom/watabou/utils/Rect;->top:I

    .line 5
    iput p3, p0, Lcom/watabou/utils/Rect;->right:I

    .line 6
    iput p4, p0, Lcom/watabou/utils/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public center()Lcom/watabou/utils/Point;
    .locals 7

    .line 1
    new-instance v0, Lcom/watabou/utils/Point;

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int/2addr v2, v1

    rem-int/2addr v2, v4

    const/4 v1, 0x0

    if-nez v2, :cond_0

    .line 2
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v3, v2

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    iget v5, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int v6, v2, v5

    div-int/2addr v6, v4

    sub-int/2addr v5, v2

    rem-int/2addr v5, v4

    if-nez v5, :cond_1

    .line 3
    invoke-static {v4}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    :cond_1
    add-int/2addr v6, v1

    invoke-direct {v0, v3, v6}, Lcom/watabou/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/watabou/utils/Point;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    :goto_0
    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    if-gt v1, v2, :cond_1

    .line 3
    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget v3, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v2, v3, :cond_0

    .line 4
    new-instance v3, Lcom/watabou/utils/Point;

    invoke-direct {v3, v1, v2}, Lcom/watabou/utils/Point;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public height()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public inside(Lcom/watabou/utils/Point;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/watabou/utils/Point;->x:I

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget p1, p1, Lcom/watabou/utils/Point;->y:I

    iget v0, p0, Lcom/watabou/utils/Rect;->top:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public intersect(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Rect;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v1, v1, v1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 3
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p1, Lcom/watabou/utils/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/watabou/utils/Rect;->left:I

    .line 4
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    iget v2, p1, Lcom/watabou/utils/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/watabou/utils/Rect;->right:I

    .line 5
    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/watabou/utils/Rect;->top:I

    .line 6
    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/watabou/utils/Rect;->bottom:I

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public set(IIII)Lcom/watabou/utils/Rect;
    .locals 0

    .line 1
    iput p1, p0, Lcom/watabou/utils/Rect;->left:I

    .line 2
    iput p2, p0, Lcom/watabou/utils/Rect;->top:I

    .line 3
    iput p3, p0, Lcom/watabou/utils/Rect;->right:I

    .line 4
    iput p4, p0, Lcom/watabou/utils/Rect;->bottom:I

    return-object p0
.end method

.method public setEmpty()Lcom/watabou/utils/Rect;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/watabou/utils/Rect;->bottom:I

    iput v0, p0, Lcom/watabou/utils/Rect;->top:I

    iput v0, p0, Lcom/watabou/utils/Rect;->right:I

    iput v0, p0, Lcom/watabou/utils/Rect;->left:I

    return-object p0
.end method

.method public setPos(II)Lcom/watabou/utils/Rect;
    .locals 3

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget v2, p0, Lcom/watabou/utils/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 2
    iput p1, p0, Lcom/watabou/utils/Rect;->left:I

    .line 3
    iput p2, p0, Lcom/watabou/utils/Rect;->top:I

    .line 4
    iput v0, p0, Lcom/watabou/utils/Rect;->right:I

    .line 5
    iput v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    return-object p0
.end method

.method public shift(II)Lcom/watabou/utils/Rect;
    .locals 3

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/watabou/utils/Rect;->right:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/watabou/utils/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    return-object p0
.end method

.method public square()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->height()I

    move-result v1

    mul-int v1, v1, v0

    return v1
.end method

.method public union(II)Lcom/watabou/utils/Rect;
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 8
    iput p1, p0, Lcom/watabou/utils/Rect;->left:I

    .line 9
    iput p2, p0, Lcom/watabou/utils/Rect;->top:I

    .line 10
    iput v0, p0, Lcom/watabou/utils/Rect;->right:I

    .line 11
    iput v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    return-object p0

    .line 12
    :cond_0
    iget v0, p0, Lcom/watabou/utils/Rect;->left:I

    if-ge p1, v0, :cond_1

    .line 13
    iput p1, p0, Lcom/watabou/utils/Rect;->left:I

    goto :goto_0

    .line 14
    :cond_1
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    if-lt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 15
    iput p1, p0, Lcom/watabou/utils/Rect;->right:I

    .line 16
    :cond_2
    :goto_0
    iget p1, p0, Lcom/watabou/utils/Rect;->top:I

    if-ge p2, p1, :cond_3

    .line 17
    iput p2, p0, Lcom/watabou/utils/Rect;->top:I

    goto :goto_1

    .line 18
    :cond_3
    iget p1, p0, Lcom/watabou/utils/Rect;->bottom:I

    if-lt p2, p1, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 19
    iput p2, p0, Lcom/watabou/utils/Rect;->bottom:I

    :cond_4
    :goto_1
    return-object p0
.end method

.method public union(Lcom/watabou/utils/Rect;)Lcom/watabou/utils/Rect;
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Rect;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v1, v1, v1}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 3
    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    iget v2, p1, Lcom/watabou/utils/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/watabou/utils/Rect;->left:I

    .line 4
    iget v1, p0, Lcom/watabou/utils/Rect;->right:I

    iget v2, p1, Lcom/watabou/utils/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/watabou/utils/Rect;->right:I

    .line 5
    iget v1, p0, Lcom/watabou/utils/Rect;->top:I

    iget v2, p1, Lcom/watabou/utils/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/watabou/utils/Rect;->top:I

    .line 6
    iget v1, p0, Lcom/watabou/utils/Rect;->bottom:I

    iget p1, p1, Lcom/watabou/utils/Rect;->bottom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/watabou/utils/Rect;->bottom:I

    return-object v0
.end method

.method public width()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/watabou/utils/Rect;->right:I

    iget v1, p0, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
