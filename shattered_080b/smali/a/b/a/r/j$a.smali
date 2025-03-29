.class public La/b/a/r/j$a;
.super La/b/a/r/j$d;
.source "ObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/j$d<",
        "TK;TV;",
        "La/b/a/r/j$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public f:La/b/a/r/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/a/r/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La/b/a/r/j$d;-><init>(La/b/a/r/j;)V

    .line 2
    new-instance p1, La/b/a/r/j$b;

    invoke-direct {p1}, La/b/a/r/j$b;-><init>()V

    iput-object p1, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

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

.method public next()La/b/a/r/j$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, La/b/a/r/j$d;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, La/b/a/r/j$d;->e:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget-object v1, v0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 5
    iget-object v2, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

    iget v3, p0, La/b/a/r/j$d;->c:I

    aget-object v1, v1, v3

    iput-object v1, v2, La/b/a/r/j$b;->a:Ljava/lang/Object;

    .line 6
    iget-object v0, v0, La/b/a/r/j;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iput-object v0, v2, La/b/a/r/j$b;->b:Ljava/lang/Object;

    .line 7
    iput v3, p0, La/b/a/r/j$d;->d:I

    .line 8
    invoke-virtual {p0}, La/b/a/r/j$d;->a()V

    .line 9
    iget-object v0, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

    return-object v0

    .line 10
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/a/r/j$a;->next()La/b/a/r/j$b;

    move-result-object v0

    return-object v0
.end method
