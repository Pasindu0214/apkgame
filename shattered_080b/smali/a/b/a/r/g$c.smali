.class public La/b/a/r/g$c;
.super La/b/a/r/g$d;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(La/b/a/r/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/b/a/r/g$d;-><init>(La/b/a/r/g;)V

    return-void
.end method


# virtual methods
.method public toArray()La/b/a/r/f;
    .locals 3

    .line 1
    new-instance v0, La/b/a/r/f;

    iget-object v1, p0, La/b/a/r/g$d;->b:La/b/a/r/g;

    iget v1, v1, La/b/a/r/g;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, La/b/a/r/f;-><init>(ZI)V

    .line 2
    :goto_0
    iget-boolean v1, p0, La/b/a/r/g$d;->a:Z

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, p0, La/b/a/r/g$d;->e:Z

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, La/b/a/r/g$d;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-object v2, p0, La/b/a/r/g$d;->b:La/b/a/r/g;

    iget-object v2, v2, La/b/a/r/g;->keyTable:[I

    aget v1, v2, v1

    .line 5
    :goto_1
    iget v2, p0, La/b/a/r/g$d;->c:I

    iput v2, p0, La/b/a/r/g$d;->d:I

    .line 6
    invoke-virtual {p0}, La/b/a/r/g$d;->a()V

    .line 7
    invoke-virtual {v0, v1}, La/b/a/r/f;->a(I)V

    goto :goto_0

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

    :cond_3
    return-object v0
.end method
