.class public La/b/a/r/a$b;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(La/b/a/r/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/a<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/a/r/a$b;->d:Z

    .line 3
    iput-object p1, p0, La/b/a/r/a$b;->a:La/b/a/r/a;

    .line 4
    iput-boolean p2, p0, La/b/a/r/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/r/a$b;->d:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, La/b/a/r/a$b;->c:I

    iget-object v1, p0, La/b/a/r/a$b;->a:La/b/a/r/a;

    iget v1, v1, La/b/a/r/a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
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
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, La/b/a/r/a$b;->c:I

    iget-object v1, p0, La/b/a/r/a$b;->a:La/b/a/r/a;

    iget v2, v1, La/b/a/r/a;->b:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-boolean v2, p0, La/b/a/r/a$b;->d:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v1, La/b/a/r/a;->a:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La/b/a/r/a$b;->c:I

    aget-object v0, v1, v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, La/b/a/r/a$b;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/r/a$b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, La/b/a/r/a$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/a$b;->c:I

    .line 3
    iget-object v1, p0, La/b/a/r/a$b;->a:La/b/a/r/a;

    invoke-virtual {v1, v0}, La/b/a/r/a;->a(I)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
