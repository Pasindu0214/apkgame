.class public La/b/a/r/k$a;
.super La/b/a/r/j$a;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/k;
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
        "La/b/a/r/j$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public g:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/a/r/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/k<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La/b/a/r/j$a;-><init>(La/b/a/r/j;)V

    .line 2
    iget-object p1, p1, La/b/a/r/k;->q:La/b/a/r/a;

    iput-object p1, p0, La/b/a/r/k$a;->g:La/b/a/r/a;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, La/b/a/r/j$d;->c:I

    .line 2
    iget-object v1, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget v1, v1, La/b/a/r/j;->a:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, La/b/a/r/j$d;->a:Z

    return-void
.end method

.method public next()La/b/a/r/j$b;
    .locals 3

    .line 2
    iget-boolean v0, p0, La/b/a/r/j$d;->a:Z

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, La/b/a/r/j$d;->e:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

    iget-object v1, p0, La/b/a/r/k$a;->g:La/b/a/r/a;

    iget v2, p0, La/b/a/r/j$d;->c:I

    invoke-virtual {v1, v2}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, La/b/a/r/j$b;->a:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

    iget-object v1, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget-object v2, v0, La/b/a/r/j$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, La/b/a/r/j$b;->b:Ljava/lang/Object;

    .line 6
    iget v0, p0, La/b/a/r/j$d;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, La/b/a/r/j$d;->c:I

    .line 7
    iget-object v2, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget v2, v2, La/b/a/r/j;->a:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, La/b/a/r/j$d;->a:Z

    .line 8
    iget-object v0, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

    return-object v0

    .line 9
    :cond_1
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/a/r/k$a;->next()La/b/a/r/j$b;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget v0, p0, La/b/a/r/j$d;->d:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget-object v1, p0, La/b/a/r/j$a;->f:La/b/a/r/j$b;

    iget-object v1, v1, La/b/a/r/j$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, La/b/a/r/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, La/b/a/r/j$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/j$d;->c:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
