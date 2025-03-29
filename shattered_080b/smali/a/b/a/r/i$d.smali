.class public La/b/a/r/i$d;
.super La/b/a/r/i$c;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/i$c<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/b/a/r/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/i<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La/b/a/r/i$c;-><init>(La/b/a/r/i;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/r/i$c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, La/b/a/r/i$c;->a:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, La/b/a/r/i$c;->a:Z

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, La/b/a/r/i$c;->e:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, La/b/a/r/i$c;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget-object v0, v0, La/b/a/r/i;->f:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget-object v1, v1, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 6
    :goto_0
    iget v1, p0, La/b/a/r/i$c;->c:I

    iput v1, p0, La/b/a/r/i$c;->d:I

    .line 7
    invoke-virtual {p0}, La/b/a/r/i$c;->a()V

    return-object v0

    .line 8
    :cond_1
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 0

    .line 1
    invoke-super {p0}, La/b/a/r/i$c;->remove()V

    return-void
.end method
