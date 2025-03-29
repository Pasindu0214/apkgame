.class public Lcom/watabou/utils/Random;
.super Ljava/lang/Object;
.source "Random.java"


# static fields
.field public static generators:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    .line 2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public static Float()F
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static Float(F)F
    .locals 1

    .line 2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    mul-float v0, v0, p0

    return v0
.end method

.method public static Float(FF)F
    .locals 0

    sub-float/2addr p1, p0

    .line 3
    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    add-float/2addr p1, p0

    return p1
.end method

.method public static Int(I)I
    .locals 1

    if-lez p0, :cond_0

    .line 1
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Int(II)I
    .locals 0

    sub-int/2addr p1, p0

    .line 2
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static IntRange(II)I
    .locals 0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static Long()J
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static NormalFloat(FF)F
    .locals 1

    sub-float/2addr p1, p0

    .line 1
    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    invoke-static {p1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p1, p0

    return p1
.end method

.method public static NormalIntRange(II)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v1

    add-float/2addr v1, v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float v1, v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr p0, p1

    return p0
.end method

.method public static chances([F)I
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    aget v5, p0, v3

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v4}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    :goto_1
    if-ge v1, v0, :cond_2

    .line 4
    aget v4, p0, v1

    add-float/2addr v2, v4

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static chances(Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/lang/Float;",
            ">;)TK;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 7
    new-array v2, v0, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 8
    aget-object v7, v1, v5

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v2, v5

    .line 9
    aget v7, v2, v5

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_1

    return-object p0

    .line 10
    :cond_1
    invoke-static {v6}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v3

    .line 11
    aget v5, v2, v4

    :goto_1
    if-ge v4, v0, :cond_3

    cmpg-float v6, v3, v5

    if-gez v6, :cond_2

    .line 12
    aget-object p0, v1, v4

    return-object p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 13
    aget v6, v2, v4

    add-float/2addr v5, v6

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static element(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static element([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static index(Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-static {p0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p0

    return p0
.end method

.method public static varargs oneOf([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    array-length v0, p0

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static popGenerator()V
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tried to pop the last random number generator!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static pushGenerator(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p0, p1}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public static shuffle(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/watabou/utils/Random;->generators:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    return-void
.end method
