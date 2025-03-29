.class public La/b/a/r/a$a;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.field public c:La/b/a/r/a$b;

.field public d:La/b/a/r/a$b;


# direct methods
.method public constructor <init>(La/b/a/r/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/r/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/r/a$a;->a:La/b/a/r/a;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, La/b/a/r/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/r/a$a;->c:La/b/a/r/a$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/b/a/r/a$b;

    iget-object v1, p0, La/b/a/r/a$a;->a:La/b/a/r/a;

    iget-boolean v2, p0, La/b/a/r/a$a;->b:Z

    invoke-direct {v0, v1, v2}, La/b/a/r/a$b;-><init>(La/b/a/r/a;Z)V

    iput-object v0, p0, La/b/a/r/a$a;->c:La/b/a/r/a$b;

    .line 3
    new-instance v0, La/b/a/r/a$b;

    iget-object v1, p0, La/b/a/r/a$a;->a:La/b/a/r/a;

    iget-boolean v2, p0, La/b/a/r/a$a;->b:Z

    invoke-direct {v0, v1, v2}, La/b/a/r/a$b;-><init>(La/b/a/r/a;Z)V

    iput-object v0, p0, La/b/a/r/a$a;->d:La/b/a/r/a$b;

    .line 4
    :cond_0
    iget-object v0, p0, La/b/a/r/a$a;->c:La/b/a/r/a$b;

    iget-boolean v1, v0, La/b/a/r/a$b;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 5
    iput v3, v0, La/b/a/r/a$b;->c:I

    .line 6
    iput-boolean v2, v0, La/b/a/r/a$b;->d:Z

    .line 7
    iget-object v1, p0, La/b/a/r/a$a;->d:La/b/a/r/a$b;

    iput-boolean v3, v1, La/b/a/r/a$b;->d:Z

    return-object v0

    .line 8
    :cond_1
    iget-object v1, p0, La/b/a/r/a$a;->d:La/b/a/r/a$b;

    iput v3, v1, La/b/a/r/a$b;->c:I

    .line 9
    iput-boolean v2, v1, La/b/a/r/a$b;->d:Z

    .line 10
    iput-boolean v3, v0, La/b/a/r/a$b;->d:Z

    return-object v1
.end method
