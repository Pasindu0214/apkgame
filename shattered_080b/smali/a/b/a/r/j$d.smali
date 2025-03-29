.class public abstract La/b/a/r/j$d;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:La/b/a/r/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/j<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(La/b/a/r/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/a/r/j$d;->e:Z

    .line 3
    iput-object p1, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    .line 4
    invoke-virtual {p0}, La/b/a/r/j$d;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La/b/a/r/j$d;->a:Z

    .line 2
    iget-object v0, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget-object v1, v0, La/b/a/r/j;->b:[Ljava/lang/Object;

    .line 3
    iget v2, v0, La/b/a/r/j;->d:I

    iget v0, v0, La/b/a/r/j;->e:I

    add-int/2addr v2, v0

    :cond_0
    iget v0, p0, La/b/a/r/j$d;->c:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, La/b/a/r/j$d;->c:I

    if-ge v0, v2, :cond_1

    .line 4
    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v3, p0, La/b/a/r/j$d;->a:Z

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, La/b/a/r/j$d;->d:I

    .line 2
    iput v0, p0, La/b/a/r/j$d;->c:I

    .line 3
    invoke-virtual {p0}, La/b/a/r/j$d;->a()V

    return-void
.end method

.method public remove()V
    .locals 4

    .line 1
    iget v0, p0, La/b/a/r/j$d;->d:I

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget v2, v1, La/b/a/r/j;->d:I

    if-lt v0, v2, :cond_0

    .line 3
    invoke-virtual {v1, v0}, La/b/a/r/j;->c(I)V

    .line 4
    iget v0, p0, La/b/a/r/j$d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/j$d;->c:I

    .line 5
    invoke-virtual {p0}, La/b/a/r/j$d;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, v1, La/b/a/r/j;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 7
    iget-object v1, v1, La/b/a/r/j;->c:[Ljava/lang/Object;

    aput-object v3, v1, v0

    :goto_0
    const/4 v0, -0x1

    .line 8
    iput v0, p0, La/b/a/r/j$d;->d:I

    .line 9
    iget-object v0, p0, La/b/a/r/j$d;->b:La/b/a/r/j;

    iget v1, v0, La/b/a/r/j;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/b/a/r/j;->a:I

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
