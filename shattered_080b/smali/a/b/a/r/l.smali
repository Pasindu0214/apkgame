.class public abstract La/b/a/r/l;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final c:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const v1, 0x7fffffff

    .line 1
    invoke-direct {p0, v0, v1}, La/b/a/r/l;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, La/b/a/r/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, La/b/a/r/a;-><init>(ZI)V

    iput-object v0, p0, La/b/a/r/l;->c:La/b/a/r/a;

    .line 4
    iput p2, p0, La/b/a/r/l;->a:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public a(La/b/a/r/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/a<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 6
    iget-object v0, p0, La/b/a/r/l;->c:La/b/a/r/a;

    .line 7
    iget v1, p0, La/b/a/r/l;->a:I

    const/4 v2, 0x0

    .line 8
    :goto_0
    iget v3, p1, La/b/a/r/a;->b:I

    if-ge v2, v3, :cond_2

    .line 9
    invoke-virtual {p1, v2}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget v4, v0, La/b/a/r/a;->b:I

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v3}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 11
    :cond_1
    invoke-virtual {p0, v3}, La/b/a/r/l;->b(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget p1, p0, La/b/a/r/l;->b:I

    iget v0, v0, La/b/a/r/a;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La/b/a/r/l;->b:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "objects cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, La/b/a/r/l;->c:La/b/a/r/a;

    iget v1, v0, La/b/a/r/a;->b:I

    iget v2, p0, La/b/a/r/l;->a:I

    if-ge v1, v2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 3
    iget v0, p0, La/b/a/r/l;->b:I

    iget-object v1, p0, La/b/a/r/l;->c:La/b/a/r/a;

    iget v1, v1, La/b/a/r/a;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/a/r/l;->b:I

    .line 4
    :cond_0
    instance-of v0, p1, La/b/a/r/l$a;

    if-eqz v0, :cond_1

    check-cast p1, La/b/a/r/l$a;

    invoke-interface {p1}, La/b/a/r/l$a;->a()V

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/l;->c:La/b/a/r/a;

    iget v1, v0, La/b/a/r/a;->b:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, La/b/a/r/l;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/b/a/r/a;->pop()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p1, La/b/a/r/l$a;

    if-eqz v0, :cond_0

    check-cast p1, La/b/a/r/l$a;

    invoke-interface {p1}, La/b/a/r/l$a;->a()V

    :cond_0
    return-void
.end method
