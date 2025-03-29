.class public La/b/a/m/a/s;
.super Ljava/lang/Object;
.source "AndroidNet.java"

# interfaces
.implements La/b/a/j;


# instance fields
.field public final a:La/b/a/m/a/c;

.field public b:La/b/a/q/a;


# direct methods
.method public constructor <init>(La/b/a/m/a/c;La/b/a/m/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/m/a/s;->a:La/b/a/m/a/c;

    .line 3
    new-instance p1, La/b/a/q/a;

    iget p2, p2, La/b/a/m/a/d;->v:I

    invoke-direct {p1, p2}, La/b/a/q/a;-><init>(I)V

    iput-object p1, p0, La/b/a/m/a/s;->b:La/b/a/q/a;

    return-void
.end method
