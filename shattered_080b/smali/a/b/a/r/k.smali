.class public La/b/a/r/k;
.super La/b/a/r/j;
.source "OrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/r/k$b;,
        La/b/a/r/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/j<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final q:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, La/b/a/r/j;-><init>()V

    .line 2
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/r/k;->q:La/b/a/r/a;

    return-void
.end method


# virtual methods
.method public a()La/b/a/r/j$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/k$a;

    invoke-direct {v0, p0}, La/b/a/r/k$a;-><init>(La/b/a/r/k;)V

    iput-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    .line 3
    new-instance v0, La/b/a/r/k$a;

    invoke-direct {v0, p0}, La/b/a/r/k$a;-><init>(La/b/a/r/k;)V

    iput-object v0, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    iget-boolean v1, v0, La/b/a/r/j$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 6
    iget-object v0, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 7
    iget-object v1, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 9
    iget-object v0, p0, La/b/a/r/j;->m:La/b/a/r/j$a;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 10
    iget-object v1, p0, La/b/a/r/j;->l:La/b/a/r/j$a;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0
.end method

.method public b()La/b/a/r/j$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$c<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/k$b;

    invoke-direct {v0, p0}, La/b/a/r/k$b;-><init>(La/b/a/r/k;)V

    iput-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    .line 3
    new-instance v0, La/b/a/r/k$b;

    invoke-direct {v0, p0}, La/b/a/r/k$b;-><init>(La/b/a/r/k;)V

    iput-object v0, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    iget-boolean v1, v0, La/b/a/r/j$d;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 6
    iget-object v0, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 7
    iget-object v1, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    invoke-virtual {v0}, La/b/a/r/j$d;->b()V

    .line 9
    iget-object v0, p0, La/b/a/r/j;->o:La/b/a/r/j$c;

    iput-boolean v3, v0, La/b/a/r/j$d;->e:Z

    .line 10
    iget-object v1, p0, La/b/a/r/j;->n:La/b/a/r/j$c;

    iput-boolean v2, v1, La/b/a/r/j$d;->e:Z

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 12
    iget v1, p0, La/b/a/r/j;->h:I

    and-int/2addr v1, v0

    .line 13
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p0, v0}, La/b/a/r/j;->a(I)I

    move-result v1

    .line 15
    iget-object v2, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    invoke-virtual {p0, v0}, La/b/a/r/j;->b(I)I

    move-result v0

    .line 17
    iget-object v1, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 19
    iget v1, p0, La/b/a/r/j;->d:I

    iget v2, p0, La/b/a/r/j;->e:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 20
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, La/b/a/r/k;->q:La/b/a/r/a;

    invoke-virtual {v0, p1}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 22
    :cond_3
    invoke-super {p0, p1, p2}, La/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/r/k;->q:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->clear()V

    .line 2
    invoke-super {p0}, La/b/a/r/j;->clear()V

    return-void
.end method

.method public e(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/k;->q:La/b/a/r/a;

    invoke-virtual {v0, p1}, La/b/a/r/a;->a(I)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, La/b/a/r/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()La/b/a/r/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/j$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/b/a/r/k;->a()La/b/a/r/j$a;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, La/b/a/r/k;->a()La/b/a/r/j$a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/k;->q:La/b/a/r/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, La/b/a/r/a;->a(Ljava/lang/Object;Z)Z

    .line 2
    invoke-super {p0, p1}, La/b/a/r/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, La/b/a/r/j;->a:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, La/b/a/r/r;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, La/b/a/r/r;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 4
    iget-object v1, p0, La/b/a/r/k;->q:La/b/a/r/a;

    const/4 v2, 0x0

    .line 5
    iget v3, v1, La/b/a/r/a;->b:I

    :goto_0
    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {v1, v2}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-lez v2, :cond_1

    const-string v5, ", "

    .line 7
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    const/16 v5, 0x3d

    .line 9
    invoke-virtual {v0, v5}, La/b/a/r/r;->a(C)V

    .line 10
    invoke-virtual {p0, v4}, La/b/a/r/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, La/b/a/r/r;->a(Ljava/lang/Object;)La/b/a/r/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 11
    invoke-virtual {v0, v1}, La/b/a/r/r;->a(C)V

    .line 12
    invoke-virtual {v0}, La/b/a/r/r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
