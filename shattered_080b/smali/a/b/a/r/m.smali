.class public La/b/a/r/m;
.super Ljava/lang/Object;
.source "Pools.java"


# static fields
.field public static final a:La/b/a/r/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j<",
            "Ljava/lang/Class;",
            "La/b/a/r/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/b/a/r/j;

    invoke-direct {v0}, La/b/a/r/j;-><init>()V

    sput-object v0, La/b/a/r/m;->a:La/b/a/r/j;

    return-void
.end method

.method public static a(Ljava/lang/Class;)La/b/a/r/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La/b/a/r/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, La/b/a/r/m;->a:La/b/a/r/j;

    invoke-virtual {v0, p0}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/r/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/n;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, p0, v1, v2}, La/b/a/r/n;-><init>(Ljava/lang/Class;II)V

    .line 3
    sget-object v1, La/b/a/r/m;->a:La/b/a/r/j;

    invoke-virtual {v1, p0, v0}, La/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static a(La/b/a/r/a;Z)V
    .locals 6

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    .line 4
    iget v1, p0, La/b/a/r/a;->b:I

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ge v0, v1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 6
    sget-object v3, La/b/a/r/m;->a:La/b/a/r/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/b/a/r/l;

    if-nez v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3, v4}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_2

    move-object v3, v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
