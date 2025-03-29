.class public La/b/a/r/i$c;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:La/b/a/r/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/i<",
            "TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(La/b/a/r/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/i<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/a/r/i$c;->e:Z

    .line 3
    iput-object p1, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    .line 4
    invoke-virtual {p0}, La/b/a/r/i$c;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La/b/a/r/i$c;->a:Z

    .line 2
    iget-object v0, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget-object v1, v0, La/b/a/r/i;->b:[J

    .line 3
    iget v2, v0, La/b/a/r/i;->d:I

    iget v0, v0, La/b/a/r/i;->e:I

    add-int/2addr v2, v0

    :cond_0
    iget v0, p0, La/b/a/r/i$c;->c:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, La/b/a/r/i$c;->c:I

    if-ge v0, v2, :cond_1

    .line 4
    aget-wide v4, v1, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v3, p0, La/b/a/r/i$c;->a:Z

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    iput v0, p0, La/b/a/r/i$c;->d:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, La/b/a/r/i$c;->c:I

    .line 3
    iget-object v0, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget-boolean v0, v0, La/b/a/r/i;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, La/b/a/r/i$c;->a:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, La/b/a/r/i$c;->a()V

    :goto_0
    return-void
.end method

.method public remove()V
    .locals 6

    .line 1
    iget v0, p0, La/b/a/r/i$c;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget-boolean v2, v0, La/b/a/r/i;->g:Z

    if-eqz v2, :cond_0

    .line 2
    iput-object v1, v0, La/b/a/r/i;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, La/b/a/r/i;->g:Z

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, La/b/a/r/i$c;->d:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v2, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget v3, v2, La/b/a/r/i;->d:I

    if-lt v0, v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, La/b/a/r/i;->a(I)V

    .line 7
    iget v0, p0, La/b/a/r/i$c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/a/r/i$c;->c:I

    .line 8
    invoke-virtual {p0}, La/b/a/r/i$c;->a()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v2, La/b/a/r/i;->b:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v0

    .line 10
    iget-object v2, v2, La/b/a/r/i;->c:[Ljava/lang/Object;

    aput-object v1, v2, v0

    :goto_0
    const/4 v0, -0x2

    .line 11
    iput v0, p0, La/b/a/r/i$c;->d:I

    .line 12
    iget-object v0, p0, La/b/a/r/i$c;->b:La/b/a/r/i;

    iget v1, v0, La/b/a/r/i;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/b/a/r/i;->a:I

    return-void

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
