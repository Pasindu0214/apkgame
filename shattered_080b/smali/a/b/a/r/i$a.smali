.class public La/b/a/r/i$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/i$c<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "La/b/a/r/i$b<",
        "TV;>;>;",
        "Ljava/util/Iterator<",
        "La/b/a/r/i$b<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public f:La/b/a/r/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/i$b<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/a/r/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/b/a/r/i$c;-><init>(La/b/a/r/i;)V

    .line 2
    new-instance p1, La/b/a/r/i$b;

    invoke-direct {p1}, La/b/a/r/i$b;-><init>()V

    iput-object p1, p0, La/b/a/r/i$a;->f:La/b/a/r/i$b;

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
            "La/b/a/r/i$b<",
            "TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, La/b/a/r/i$c;->a:Z

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, La/b/a/r/i$c;->e:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget-object v1, v0, La/b/a/r/i;->b:[J

    .line 4
    iget v2, p0, La/b/a/r/i$c;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v1, p0, La/b/a/r/i$a;->f:La/b/a/r/i$b;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, La/b/a/r/i$b;->a:J

    .line 6
    iget-object v0, v0, La/b/a/r/i;->f:Ljava/lang/Object;

    iput-object v0, v1, La/b/a/r/i$b;->b:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, La/b/a/r/i$a;->f:La/b/a/r/i$b;

    aget-wide v4, v1, v2

    iput-wide v4, v3, La/b/a/r/i$b;->a:J

    .line 8
    iget-object v0, v0, La/b/a/r/i;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    iput-object v0, v3, La/b/a/r/i$b;->b:Ljava/lang/Object;

    .line 9
    :goto_0
    iget v0, p0, La/b/a/r/i$c;->c:I

    iput v0, p0, La/b/a/r/i$c;->d:I

    .line 10
    invoke-virtual {p0}, La/b/a/r/i$c;->a()V

    .line 11
    iget-object v0, p0, La/b/a/r/i$a;->f:La/b/a/r/i$b;

    return-object v0

    .line 12
    :cond_1
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
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
