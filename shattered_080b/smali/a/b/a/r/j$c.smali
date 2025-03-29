.class public La/b/a/r/j$c;
.super La/b/a/r/j$d;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/j$d<",
        "TK;",
        "Ljava/lang/Object;",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/b/a/r/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/j<",
            "TK;*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La/b/a/r/j$d;-><init>(La/b/a/r/j;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/r/j$d;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, La/b/a/r/j$d;->a:Z

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

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, La/b/a/r/j$d;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, La/b/a/r/j$d;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget-object v0, v0, La/b/a/r/j;->b:[Ljava/lang/Object;

    iget v1, p0, La/b/a/r/j$d;->c:I

    aget-object v0, v0, v1

    .line 4
    iput v1, p0, La/b/a/r/j$d;->d:I

    .line 5
    invoke-virtual {p0}, La/b/a/r/j$d;->a()V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
