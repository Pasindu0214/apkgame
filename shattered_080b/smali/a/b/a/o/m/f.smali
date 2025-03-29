.class public La/b/a/o/m/f;
.super La/b/a/o/i;
.source "PixmapPacker.java"


# instance fields
.field public final synthetic i:La/b/a/o/m/e$c;


# direct methods
.method public constructor <init>(La/b/a/o/m/e$c;La/b/a/o/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/o/m/f;->i:La/b/a/o/m/e$c;

    invoke-direct {p0, p2}, La/b/a/o/i;-><init>(La/b/a/o/l;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, La/b/a/o/i;->b()V

    .line 2
    iget-object v0, p0, La/b/a/o/m/f;->i:La/b/a/o/m/e$c;

    iget-object v0, v0, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    invoke-virtual {v0}, La/b/a/o/g;->a()V

    return-void
.end method
