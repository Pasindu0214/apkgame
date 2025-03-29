.class public La/b/a/r/p;
.super La/b/a/r/a;
.source "SnapshotArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public f:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 1
    invoke-direct {p0, v0, v1, p1}, La/b/a/r/a;-><init>(ZILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 4
    invoke-super {p0, p1}, La/b/a/r/a;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(II)V
    .locals 0

    .line 5
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 6
    invoke-super {p0, p1, p2}, La/b/a/r/a;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 2
    invoke-super {p0, p1, p2}, La/b/a/r/a;->a(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public b()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 2
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    iput-object v0, p0, La/b/a/r/p;->e:[Ljava/lang/Object;

    .line 3
    iget v1, p0, La/b/a/r/p;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/b/a/r/p;->g:I

    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, La/b/a/r/p;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/r/p;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v2, v0

    iget v3, p0, La/b/a/r/a;->b:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, La/b/a/r/p;->f:[Ljava/lang/Object;

    iput-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La/b/a/r/p;->f:[Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, La/b/a/r/a;->a:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, La/b/a/r/a;->b(I)[Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 7
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 8
    invoke-super {p0, p1}, La/b/a/r/a;->c(I)V

    return-void
.end method

.method public clear()V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 2
    invoke-super {p0}, La/b/a/r/a;->clear()V

    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/b/a/r/p;->c()V

    .line 2
    invoke-super {p0}, La/b/a/r/a;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
